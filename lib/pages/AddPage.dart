import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:stharbak_mart/pages/CardPage.dart';
import 'package:food_shop/widgets/TambahDataWidgets.dart';
import 'package:food_shop/widgets/AppBarWidgets2.dart';

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: [
          
          //Button Add
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarwidgets2(),
               
                  
                  // Add Data
                      Row(
                        children: [

                          ElevatedButton(
                            child: Row(
                            children: [
                              Text('ADD',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                              Icon(Icons.add,
                              color: Colors.white,
                              size: 16,
                              ),
                           
                            ]
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Tambahdatawidgets()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue)
                          )
                        ],
                      ),
                    

                Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         
                        ),
                      ),
                      

                      //Kotak
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
                              ),
                            ],
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
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Burger',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              
                              
                             
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              )
                            ],
                          ),
                        ),
                            ],
                          ),
                        ),
                      ),
                      
                      Divider(
                        color: Colors.black,
                      ),
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
                              ),
                            ],
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
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'mixue',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Text(
                                'Rp. 20.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              )
                            ],
                          ),
                        ),
                            ],
                          ),
                        ),
                      ),
                     
                      Divider(
                        color: Colors.black,
                      ),
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
                              ),
                            ],
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
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Burger',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                  Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    )
                                ],
                              ),
                              
                              
                             
                             
                            ],
                          ),

                          
                        ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}