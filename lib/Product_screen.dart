import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/product_model.dart';
import 'package:shopping_ui/size_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        heroTag: product.name!,
        transitionBetweenRoutes: false,
        trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.heart,
              color: CupertinoColors.white,
              size: 35,
            )),
      ),
      child: Hero(
        tag: product.name!,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/${product.name}.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FittedBox(
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        CupertinoColors.black.withOpacity(.8),
                        CupertinoColors.black.withOpacity(.3),
                        CupertinoColors.black.withOpacity(.0),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom + 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          product.category!,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: CupertinoColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizeWidget(
                              size: 40,
                            ),
                            SizeWidget(
                              size: 41,
                            ),
                            SizeWidget(size: 42, isSelected: true),
                            SizeWidget(
                              size: 43,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      CupertinoColors.separator.withOpacity(.5),
                                  blurRadius: 10,
                                  offset: const Offset(5, 5),
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
