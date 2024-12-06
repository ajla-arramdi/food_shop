import 'package:flutter/material.dart';
import 'package:food_shop/pages/HomePage.dart';
  import 'package:food_shop/widgets/AppBarWidgets2.dart';
  import 'package:image_picker/image_picker.dart';
  import 'package:food_shop/widgets/BarBawah.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';

  
  final supabase = Supabase.instance.client;

  class Tambahdatawidgets extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductForm(),
      );
    }
  }
  class ProductForm extends StatefulWidget {
    @override
    _ProductFormState createState() => _ProductFormState();
  }

  class _ProductFormState extends State<ProductForm> {
    String _katagori = 'Makanan';
    XFile? _imageFile;
    final TextEditingController _nameController = TextEditingController();
     final TextEditingController _priceController = TextEditingController();

    Future<void> _pickImage() async {
      final ImagePicker _picker = ImagePicker();
      final XFile? selectedImage =
          await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = selectedImage;
      });
    }
        @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children: [
            Appbarwidgets2(),

            Padding(padding: EdgeInsets.all(16),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10, 
                      spreadRadius: 2,
                      offset: Offset(0, 4), 
                    ),
                  ]
                ),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Nama Produk
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Nama Produk',
                          hintText: 'Masukan Nama Produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                      SizedBox(height: 30),

                      // Harga Field
                    TextField(
                      controller: _priceController,
                      decoration: InputDecoration(
                        labelText: 'Harga',
                        hintText: 'Masukan Harga',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    // Kategori Produk Dropdown
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Kategori produk',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      value: 'Makanan',
                      items: [
                        DropdownMenuItem(
                          value: 'Makanan',
                          child: Text('Makanan'),
                        ),
                        DropdownMenuItem(
                          value: 'Minuman',
                          child: Text('Minuman'),
                          
                        ),
                      ],
                      onChanged: (value) {
                        // Handle dropdown change
                      },
                    ),
                    SizedBox(height: 30),

                    // Image Picker Field (placeholder)
                    GestureDetector(
                onTap: _pickImage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_imageFile == null ? 'Choose file' : 'Image Selected'),
                    ],
                  ),
                ),
              ),
                    SizedBox(height: 50),

                    //Button
                    ElevatedButton(
                      onPressed: ()async {
                        final name = _nameController.text;
                        final price = _priceController.text;

                        await supabase.from('foodaas').insert({
                          'name': name,
                          'price': price
                        });

                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => BarBawah(),
                          ),
                        );
                        // Handle form submission
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('Submit', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                          ),
                        ),
                    ),

                      
                    ],
                  ),

                    
              ),
            ),
            ),
            )
          ],
      ),
  );
  }
  }