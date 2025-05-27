import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Notice extends StatelessWidget {
  final String title;
  final String content;
  const Notice({super.key,
  required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            SizedBox(height: 4,),
            Row(
              children: [
                Flexible(child:Text(content,style: TextStyle(fontFamily: 'Pretendard',color: Color(0xff616366)),),),
                Icon(Symbols.check_circle,color: Colors.blue,size: 30,fill: 1,),

              ],
            ),
            SizedBox(height: 4,),
            Text('자세히 보기',style:TextStyle(color: Color(0xffADAFB2)),),
            SizedBox(height: 24,),
          ],
    );
  }
}
