import 'package:flutter/cupertino.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({Key? key, required this.title, this.isSelected = false})
      : super(key: key);
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AspectRatio(
        aspectRatio: 2.5 / 1,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.secondarySystemFill),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                fontSize: isSelected ? 20 : 18,
                color: isSelected
                    ? CupertinoColors.black
                    : CupertinoColors.inactiveGray),
          ),
        ),
      ),
    );
  }
}
