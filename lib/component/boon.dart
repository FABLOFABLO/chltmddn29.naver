import 'package:flutter/material.dart';

class Boon extends StatelessWidget {
  const Boon ({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Booning(expected: Text('구매 후 배송완료 시',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff616366)),), point: Text('23,500P',style: TextStyle(fontWeight: FontWeight.w500,),),),
        Divider(thickness: 3,color: Color(0xffF0F2F5),),
        Booning(expected: Text('적립 예정 포인트'), point: Text('23,950P',style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff0A7FF5)),))
      ],
    );
  }
}

class Booning extends StatelessWidget {
  final Widget expected;
  final Widget point;
  const Booning({super.key,
  required this.expected,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ expected,point
      ],
    );
  }
}
