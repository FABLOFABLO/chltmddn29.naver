import 'package:flutter/cupertino.dart';
import 'package:material_symbols_icons/symbols.dart';

class Select extends StatelessWidget {
  final String register;
  const Select({super.key,
  required this.register});


  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: Color(0xffF0F2F5)),
          ),
          width: 370,
          height: 44,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(register, style: TextStyle(color: Color(0xff7A7C80))),
              Icon(Symbols.arrow_forward_ios_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
