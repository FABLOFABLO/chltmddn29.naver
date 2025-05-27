import 'package:flutter/cupertino.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Pay extends StatelessWidget {
  final String how;
  final String direct;

  const Pay({super.key, required this.how,required this.direct});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(how, style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(width: 8,),
        Text(direct,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff939599)),),
          ],
        ),
      ],
    );
  }
}
