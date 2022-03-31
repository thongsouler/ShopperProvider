import 'package:edu_auth/Screens/ShopHome/components/cart_screem.dart';
import 'package:edu_auth/Screens/ShopHome/components/catalog_screen.dart';
import 'package:edu_auth/Screens/ShopHome/shop_home.dart';
import 'package:edu_auth/Screens/Welcome/welcome_screen.dart';
import 'package:edu_auth/constant.dart';
import 'package:edu_auth/models/cart.dart';
import 'package:edu_auth/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu Auth',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
