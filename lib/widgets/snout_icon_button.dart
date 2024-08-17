import 'package:flutter/material.dart';

class SnoutIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final double? size;
  final double? borderWidth;
  final double? borderRadius;
  final Color? borderColor;
  final Color? bgColor;
  final Color? iconColor;
  final Color? splashColor;
  final BoxShape? shape;
  const SnoutIconButton(
      {super.key,
      required this.icon,
      this.onTap,
      this.size,
      this.borderWidth,
      this.borderColor,
      this.bgColor,
      this.iconColor,
      this.shape = BoxShape.circle,
      this.borderRadius,
      this.splashColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: shape == BoxShape.circle ? const CircleBorder() : null,
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      onTap: onTap ?? () {},
      splashColor: splashColor,
      child: Container(
        padding: EdgeInsets.all(size ?? 12),
        decoration: BoxDecoration(
          color: bgColor ?? Colors.transparent,
          shape: shape!,
          border: Border.all(
            width: borderWidth ?? 0,
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: shape == BoxShape.rectangle
              ? BorderRadius.circular(borderRadius ?? 0)
              : null,
        ),
        child: Icon(
          icon,
          color: iconColor ?? Colors.black,
        ),
      ),
    );
  }
}
