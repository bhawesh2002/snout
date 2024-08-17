import 'package:flutter/material.dart';
import 'package:snout/widgets/pet_selection_mini.dart';
import 'package:snout/widgets/snout_appbar.dart';
import 'package:snout/widgets/snout_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            right: 12,
            left: 12,
            bottom: 10),
        child: Placeholder(
          color: Colors.grey.shade100,
          child: const Column(
            children: [
              SnoutAppbar(),
              SizedBox(height: 12),
              SnoutTextField(),
              SizedBox(height: 32),
              PetSelectionMini()
            ],
          ),
        ),
      ),
    );
  }
}
