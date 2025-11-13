import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data/sample_groceries.dart';

void main() {
  runApp(SmartGroceryApp());
}

class SmartGroceryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Grocery',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Grocery'),
      ),
      body: ListView.builder(
        itemCount: sampleGroceries.length,
        itemBuilder: (context, index) {
          final item = sampleGroceries[index];
          return ListTile(
            leading: SvgPicture.asset(item.imagePath, width: 50, height: 50),
            title: Text(item.name),
            subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
            trailing: Icon(Icons.add_shopping_cart, color: Colors.green),
          );
        },
      ),
    );
  }
}
