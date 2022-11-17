import 'package:flutter/cupertino.dart';

import 'shopping_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping UI',
      home: ShoppingScreen(),
    );
  }
}
