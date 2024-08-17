import 'package:flutter/material.dart';

class SnoutIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const SnoutIconButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap ?? () {},
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        child: Icon(icon),
      ),
    );
  }
}
