import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:naver_clone/component/boon.dart';
import 'package:naver_clone/component/information.dart';
import 'package:naver_clone/component/item.dart';
import 'package:naver_clone/component/lastinformtion.dart';
import 'package:naver_clone/component/notice.dart';
import 'package:naver_clone/component/pay.dart';
import 'package:naver_clone/component/payment.dart';
import 'package:naver_clone/component/point.dart';
import 'package:naver_clone/component/select.dart';
import 'package:naver_clone/component/total.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Symbols.arrow_back, size: 28),
        title: Text('배송/결제', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Item(
                  itemImage: 'assets/image/shake.jpg',
                  itemNumber: 1,
                  itemDescition: '흑인 전용 카카오 쉐이크 L 사이즈',
                ),
                Item(
                  itemImage: 'assets/image/defende.png',
                  itemNumber: 2,
                  itemDescition: 'GASP 하드코어 13인치 손목 보호대 한 쌍',
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '배송 주소',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        Row(
                          children: [
                            Text('주소 변경', style: TextStyle(fontSize: 16,fontFamily:'Pretendard',)),
                            SizedBox(width: 4),
                            Icon(Symbols.arrow_forward_ios_rounded),
                          ],
                        ),
                      ],
                    ),
                    Information(
                      informationText: '받는 분',
                      informationTextExplan: '조박사',
                    ),
                    Information(
                      informationText: '연락처',
                      informationTextExplan: '12345678',
                    ),
                    Information(
                      informationText: '주소',
                      informationTextExplan: '[12345] 북한 평양 (원조 평양랭면 전문점)',
                    ),
                    SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(color: Color(0xffFAFAFA),
                      border: Border.all(width: 1,color: Color(0xffF0F2F5),),
                      borderRadius: BorderRadius.circular(8)),
                      width: 390,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('요청사항 없음', style: TextStyle(fontSize: 16)),
                          Icon(Symbols.keyboard_arrow_down),
                        ],
                      ),
                    ),
                    Point(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('최종 주문 정보', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 27),
                      ],
                    ),
        
                        Lastinformtion(),
                  ],
                ),
                SizedBox(height: 64,),
                Text('결제 방법',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 24,),
                Pay(how: '계좌 간편결제', direct: '',),
                Select(register: '계좌를 등록하세요'),
                SizedBox(height: 24,),
                Pay(how: '카드 간편결제', direct: '일시불·할부',),
                Select(register: '카드를 등록하세요',),
                SizedBox(height: 24,),
                Pay(how: '일반 결제', direct: '일시불·할부'),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Payment(),
                    Payment(imagePath:'assets/image/naver.png',),
                    Payment(imagePath: 'assets/image/kakao.png'),
                    ],
                ),
                SizedBox(height: 9,),
                Row(
                  children: [
                    Payment(imagePath: 'assets/image/toss.png'),
                    Payment(imagePath: 'assets/image/samsungpay.png',),
                    Payment(imagePath: 'assets/image/payco.png'),
                  ],
                ),
                SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('포인트 혜택',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 24,),
                    Boon(),
                  ],
                ),
                SizedBox(height: 40,),
                Column(
                  children: [
                    Notice(title: '구매하려는 상품이 맞습니다.', content: '상품 이밎, 모델번호, 출시일, 상품일, 사이즈를 한 번 더 확인했습니다. 단, 상품의 이미지는 촬영 환경에 따라 실제와 다를 수 있습니다.'),
                    Notice(title: '모든 책임을 갖습니다.', content: '상품 이밎, 모델번호, 출시일, 상품명, 사이즈를 한번 더 확인했습니다.'),
                    Notice(title: '반품 금지', content: '단, 상품의 이미지는 촬영 환경에 따라 실제와 다를 수 있습니다.'),
                    Notice(title: '고소 금지', content: '상품 이밎, 모델번호, 출시일, 상품명, 사이즈를 한 번 더 확인했습니다. 실제와 다를 수 있습니다.'),
                    Notice(title: '상시 숭배', content: '젠장, 또 대상혁이야. 이것만 사고 자려고 했는데, 그를 보고 말았어. 이제 나는 숭배해야돼'),
                  ], 
                ),
                SizedBox(height: 28,),
                Row(
                  children: [
                    Total(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff0A7FF5),
                  ),
                  width: 150,
                  height: 58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                            Text('결제하기 (2)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                      ],
                  ),
                )
          ]
                ),
            ]
            ),
          ),
            ),
      ),
    );
  }
}
