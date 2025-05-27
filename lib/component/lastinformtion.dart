import 'package:flutter/material.dart';

class Lastinformtion extends StatelessWidget {
  const Lastinformtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [InformationRow(title: Text('주문금액'), value: Text('22,400원',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff0A7FF5)),)),
        SizedBox(height: 16,),
        InformationRow(title: Text('상품 금액'), value: Text('22 400원',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
        SizedBox(height: 13,),
        InformationRow(title: Text('포인트',style: TextStyle(color: Color(0xff7A7C80),),), value:Text('+2000P',style: TextStyle()),),
        SizedBox(height: 12,),
        InformationRow(title: Text('배송비',style: TextStyle(color: Color(0xff7A7C80)),), value: Text('2000원',style: TextStyle(fontWeight: FontWeight.w400),))
      ],
    );
  }
}

class InformationRow extends StatelessWidget {
  const InformationRow({super.key, required this.title, required this.value});

  final Widget title;
  final Widget value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [title, value],
    );
  }
}
