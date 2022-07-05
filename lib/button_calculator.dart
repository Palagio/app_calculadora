import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  

  const ButtonCalculator({
    Key? key,
    this.onPressed,
    required this.label,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.blueAccent,
            elevation: 20,
            shadowColor: Colors.black,
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
