import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop/widgets/AppBarWidgets2.dart';

class Cardpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: 
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarwidgets2(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20, 
                    left: 10, 
                    bottom: 10,
                    ),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),

                //Box Order
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    width: 600,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/burger.jpeg',
                            height: 80,
                            width: 150,
                            ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'burger',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
               ),

                //Box Order
                 Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    width: 600,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),

                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/mixue.jpeg',
                            height: 80,
                            width: 150,
                            ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'mixue',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                 ),

                  //Box Order
                   Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    width: 600,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),

                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'images/burger.jpeg',
                            height: 80,
                            width: 150,
                            ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'burger',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Text(
                                'Rp. 20.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_circle,
                                  color: Colors.green,
                                  size: 20,
                                  ),
                                  Text('5'),
                                  Icon(Icons.add_circle,
                                  color: Colors.green,
                                  size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.symmetric(),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]
                ),

                //Total
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      vertical: 10
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ringkasan Belanja',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.black,
                  // ),

                  Padding(padding: EdgeInsets.symmetric(
                      vertical: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PPN 11%',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Rp. 10.000',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(
                      vertical: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Belanja',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Rp. 94.000',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.black,
                  ),

                  Padding(padding: EdgeInsets.symmetric(
                      vertical: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Rp. 194.000',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox( height: 20),


                  //Button
                   ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 130,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Pesan', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                        ),
                      ),
                  ),

                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  //   decoration: BoxDecoration(
                  //     color: Colors.yellow,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Text(
                  //     'Bayar Sekarang',
                  //     style: TextStyle(
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.bold
                  //     ),
                  //   ),
                  // )


                ],
              ),
              ),
              )
            ],
          ),
        ),    
      )
        ],
      ),
    );
  }
}