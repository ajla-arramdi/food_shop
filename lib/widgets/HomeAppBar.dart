import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';







class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50, // Tinggi dari lingkaran
            width: 50, // Lebar dari lingkaran (sama agar bulat)
            decoration: BoxDecoration(
              color: Colors.white, // Warna background
              shape: BoxShape.circle, // Bentuk bulat
               boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
            child: Icon(
              Icons.sort,
              size: 30,
              color: Colors.black, // Warna ikon
            ),
          ),
        
             Container(
            height: 50, // Tinggi dari lingkaran
            width: 50, // Lebar dari lingkaran (sama agar bulat)
            decoration: BoxDecoration(
              color: Colors.white, // Warna background
              shape: BoxShape.circle, // Bentuk bulat
               boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.black, // Warna ikon
            ),
          ),

         

        ],
      )
    );
  }
}
