import 'package:edu_auth/Screens/ShopHome/components/cart_screem.dart';
import 'package:edu_auth/Screens/ShopHome/components/catalog_screen.dart';
// import 'package:edu_auth/Screens/ShopHome/components/catalog_screen.dart';
import 'package:edu_auth/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/catalog.dart';

void main() {
  runApp(const ShopHome());
}

class ShopHome extends StatelessWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
        providers: [
          // In this sample app, CatalogModel never changes, so a simple Provider
          // is sufficient.
          Provider(create: (context) => CatalogModel()),
          // CartModel is implemented as a ChangeNotifier, which calls for the use
          // of ChangeNotifierProvider. Moreover, CartModel depends
          // on CatalogModel, so a ProxyProvider is needed.
          ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              if (cart == null) throw ArgumentError.notNull('cart');
              cart.catalog = catalog;
              return cart;
            },
          ),
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const MyCatalog(),
            '/cart': (context) => const MyCart(),
          },
        ));
  }
}
