import 'package:flutter/cupertino.dart';

class Point extends StatelessWidget {
  const Point({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('포인트', style: TextStyle(fontSize: 20))],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F2F5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffFAFAFA), width: 1),
                ),
                width: 305,
                height: 44,
                padding: EdgeInsets.all(12),
                child: Text('2000', style: TextStyle(fontSize: 16)),
              ),
              SizedBox(width: 10,),
              Text(
                '모두 사용',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff0069F2)),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            children: [
              Text('보유 포인트 '),
          Text('2000P',style: TextStyle(color: Color(0xff0069F2)),)
            ],
          ),
        ],
      ),
    );
  }
}
