import 'package:flutter/material.dart';
import 'package:snout/widgets/snout_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Placeholder(
            color: Colors.grey.shade100,
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 18, bottom: 12, right: 12, left: 12),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: SnoutAppbar()),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
