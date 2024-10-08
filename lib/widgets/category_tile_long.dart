import 'package:flutter/material.dart';
import 'package:snout/utils/app_icons.dart';
import 'package:snout/widgets/snout_icon_button.dart';

class CategoryTileLong extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  const CategoryTileLong(
      {super.key, required this.title, this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            subTitle != null
                ? Text(
                    subTitle!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        SnoutIconButton(
          onTap: onTap,
          icon: AppIcons.arrow,
          shape: BoxShape.rectangle,
          borderRadius: 12,
          bgColor: const Color(0xfff9f9f9),
        )
      ],
    );
  }
}
