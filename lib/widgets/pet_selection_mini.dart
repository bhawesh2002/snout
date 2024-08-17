import 'package:flutter/material.dart';
import 'package:snout/widgets/metropolis_text.dart';
import 'package:snout/widgets/snout_icon_button.dart';

class PetSelectionMini extends StatelessWidget {
  const PetSelectionMini({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MetropolisText(
                "Choose Your Pet",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 94, 94, 94),
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) {
                return const SnoutIconButton(
                  icon: Icons.pets,
                  size: 28,
                  shape: BoxShape.rectangle,
                  bgColor: Color.fromARGB(255, 29, 29, 29),
                  iconColor: Colors.white,
                  borderRadius: 24,
                  borderColor: Colors.black,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
