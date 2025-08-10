import 'package:flutter/material.dart';
import 'package:sellers/seller_tile.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            leading: Icon(Icons.store_mall_directory_outlined),
            subtitle: Text('Lorem Ipsum'),
            title: Text('Sold By'),
            children: [
              SellerTile(
                sellerName: "ABC Store",
                actualPrice: 1200,
                discountedPrice: 999,
                isSelected: true,
                onSelect: () {},
                productName: 'Arduino',
              ),
              SellerTile(
                sellerName: "ABC Store",
                actualPrice: 1200,
                discountedPrice: 999,
                isSelected: true,
                onSelect: () {},
                productName: 'Arduino',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
