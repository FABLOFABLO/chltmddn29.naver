import 'package:flutter/cupertino.dart';

class Total extends StatelessWidget {

  const Total({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Totalmoney( amount:Text('상품금액',style: TextStyle(fontWeight: FontWeight.w400),), money: Text('22,400원',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),),
          Totalmoney( amount: Text('상품금액',style: TextStyle(fontWeight: FontWeight.w400),), money: Text('22,400원',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff0A7FF5)),),),
        ],
      ),
    );
  }
}
class Totalmoney extends StatelessWidget {
  final Widget amount;
  final Widget money;
  const Totalmoney({super.key,
    required this.amount,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          amount,money
        ],
      ),
    );
  }
}

