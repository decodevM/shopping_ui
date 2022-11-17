import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/Product_screen.dart';
import 'package:shopping_ui/category_button.dart';
import 'package:shopping_ui/product_card.dart';

import 'product_model.dart';

class ShoppingScreen extends StatelessWidget {
  ShoppingScreen({Key? key}) : super(key: key);
  final List<ProductModel> _products = [
    ProductModel(name: 'nike', price: 100, size: 42, category: 'Sneakers'),
    ProductModel(name: 'adidas', price: 100, size: 42, category: 'Sneakers'),
    ProductModel(name: 'air max', price: 100, size: 42, category: 'Sneakers'),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Text(
          'Shoes',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.bell,
                color: CupertinoColors.black,
                size: 30,
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.cart,
                color: CupertinoColors.black,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoryButton(
                      title: 'All',
                      isSelected: true,
                    ),
                    CategoryButton(title: 'Sneakers'),
                    CategoryButton(title: 'Football'),
                    CategoryButton(title: 'Golf'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              // height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(
                              product: _products[index],
                            ),
                          ),
                        );
                      },
                      child: ProductCard(product: _products[index])),
                  separatorBuilder: (_, index) => const SizedBox(
                        height: 25,
                      ),
                  itemCount: _products.length),
            ),
          ],
        ),
      ),
    );
  }
}
