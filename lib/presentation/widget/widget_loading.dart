import 'package:flutter/material.dart';

class WidgetLoading extends StatelessWidget {
  const WidgetLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Colors.blueAccent,
            backgroundColor: Colors.black12,
          ),
          Text(
            "Loading",
            style: TextStyle(color: Colors.blueAccent),
          )
        ],
      ),
    );
  }
}
