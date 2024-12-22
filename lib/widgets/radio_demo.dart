import 'package:flutter/material.dart';

class RadioDemo extends StatelessWidget {
  const RadioDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Radio(value: "email", groupValue: , onChanged: onChanged)
            ],
          )
        ],
      ),
    );
  }
}
