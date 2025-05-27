import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String itemImage;
  final int itemNumber;
  final String itemDescition;

  const Item({
    super.key,
     required this.itemImage,
    required this.itemNumber,
    required this.itemDescition,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24,top: 12),
      child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.8),
            child: Image.asset(itemImage,width: 72,height: 72,fit: BoxFit.cover,),),
          Padding(padding:EdgeInsets.only(left: 16)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '상품 0$itemNumber.',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text(itemDescition, style: TextStyle(fontSize: 16)),
            ],
          ),
    ]
      )
    );
  }
}
