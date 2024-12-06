import 'package:flutter/material.dart';
import 'package:food_shop/widgets/All_food.dart';
import 'package:food_shop/widgets/AppBarWidgets.dart';
import 'package:food_shop/widgets/CategoriesWidget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  Future<List<dynamic>> fetchData() async {
    try {
      final response = await supabase.from('foodaas').select('*');
      return response as List<dynamic>;
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
          Appbarwidgets(),

          // Category Section
          Padding(
            padding: EdgeInsets.only(top: 20, left: 16),
            child: Text(
              "Category",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Categories
          Categorieswidgets(),

          // "All Food" title
          Padding(
            padding: EdgeInsets.only(top: 20, left: 16),
            child: Text(
              'All Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Expanded widget with scrollable ListView for "All Food"
          Expanded(
            child: FutureBuilder<List<dynamic>>(
              future: fetchData(),
              builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No data found'));
                } else {
                  final List<dynamic> data = snapshot.data!;
                  return GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = data[index];
                      return Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Food image
                              Container(
                                alignment: Alignment.center,
                                height: 130,
                                child: item['image_url'] != null
                                    ? Image.network(
                                        item['image_url'],
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      )
                                    : Image.asset(
                                        'images/burger.jpeg',
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                              ),
                              SizedBox(height: 8),
                              // Food name
                              Text(
                                item['name'] ?? 'Unknown Food',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 12),
                              // Food price and action
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp. ${item['price'] ?? 'N/A'}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    color: Color.fromARGB(217, 227, 111, 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
