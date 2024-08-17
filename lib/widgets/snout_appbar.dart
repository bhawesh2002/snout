import 'package:flutter/material.dart';
import 'package:snout/utils/app_icons.dart';
import 'package:snout/widgets/metropolis_text.dart';
import 'package:snout/widgets/snout_icon_button.dart';

class SnoutAppbar extends StatelessWidget {
  const SnoutAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: MetropolisText(
            "SNOUT",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        SnoutIconButton(icon: AppIcons.notifications),
        const SizedBox(width: 4),
        SnoutIconButton(icon: AppIcons.shoppingCart)
      ],
    );
  }
}
