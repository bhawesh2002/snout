import 'package:flutter/material.dart';
import 'package:snout/utils/app_icons.dart';
import 'package:snout/utils/measurements/uisizes.dart';

class SnoutTextField extends StatelessWidget {
  final TextEditingController? controller;
  const SnoutTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: UiSizes().w90,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          Icon(AppIcons.search),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: Colors.black,
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 9),
                border: InputBorder.none,
                hintText: "Search for Provisions",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
