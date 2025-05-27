import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  final String? imagePath;
  const Payment({super.key,
  this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Color(0xffE4E6EB),),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 114,
            height: 48,
            child: Center(
            child: imagePath != null ? Image.asset(imagePath!,fit: BoxFit.cover,): Text('신용카드'),


            ),
          ),
        ],
      ),
    );
  }
}
