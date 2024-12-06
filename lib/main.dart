import 'package:flutter/material.dart';
import 'package:food_shop/pages/HomePage.dart';
import 'package:food_shop/widgets/BarBawah.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://delwgbbsnhcavcfkqugs.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRlbHdnYmJzbmhjYXZjZmtxdWdzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjYxNTMsImV4cCI6MjA0NjU0MjE1M30.u2gj7UINKRRXIxY4zr6mxLpov9YSlUfddYBW0A8EjlU';


void main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      routes:{
        '/': (context) =>  BarBawah()
      }
    );
  }
}
