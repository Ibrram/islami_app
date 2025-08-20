import 'package:flutter/material.dart';

class CustomPostion extends StatelessWidget {
  const CustomPostion({
    super.key,
    required this.child,
    this.isTop = false,
    this.isLeft = false,
    this.isRight = false,
  });
  final Widget child;
  final bool isTop;
  final bool isLeft;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Positioned(
      top: isTop ? screenSize.height * 0.020 : null,
      left: isLeft ? screenSize.width * 0.060 : null,
      right: isRight ? screenSize.width * 0.060 : null,

      child: child,
    );
  }
}
