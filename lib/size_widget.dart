import 'package:flutter/cupertino.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({Key? key, this.size = 42, this.isSelected = false})
      : super(key: key);
  final int size;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? CupertinoColors.white : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$size',
        style: TextStyle(
            color: isSelected ? CupertinoColors.black : CupertinoColors.white,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
