import 'package:flutter/material.dart';
import 'package:nossa_listinha/constants.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Padding(
        padding: EdgeInsets.all(kDefaultDistance),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(22.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
      ),
    );
  }
}
