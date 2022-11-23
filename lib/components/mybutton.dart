import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String? title;
  final Color? color;
  final VoidCallback? onPress;

  var style = TextStyle(color: Colors.white, fontSize: 20);

  MyButton({
    super.key,
    this.color,
    this.title,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: Center(child: Text(title!, style: style)),
      ),
    );
  }
}
