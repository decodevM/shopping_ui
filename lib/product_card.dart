import 'package:flutter/cupertino.dart';

import 'product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: product.name!,
      child: Container(
        height: 260,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: CupertinoColors.inactiveGray,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/${product.name}.jpg',
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  color: CupertinoColors.separator.withOpacity(.5),
                  offset: Offset(5, 5),
                  blurRadius: 10)
            ]),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.category!,
                      style: const TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      product.name!.substring(0, 1).toUpperCase() +
                          product.name!.substring(1),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: CupertinoColors.white.withOpacity(.9),
                          fontSize: 30)),
                  const Spacer(),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 30,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: CupertinoButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: CupertinoColors.white, shape: BoxShape.circle),
                  child: const Icon(CupertinoIcons.heart,
                      size: 30, color: CupertinoColors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
