import 'package:flutter/cupertino.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Information extends StatelessWidget {
  final String informationText;
  final dynamic informationTextExplan;

  const Information({super.key, required this.informationText,
  required this.informationTextExplan});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox( width: 64,
        child: Text(informationText),),
        Text(informationTextExplan),
        ],
      
    );
  }
}
