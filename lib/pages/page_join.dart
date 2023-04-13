import 'package:flutter/material.dart';
import 'package:step2/global_assets/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'new_member.dart';

class PageJoin extends StatelessWidget {
  const PageJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
           backgroundColor: Colors.transparent,
           shadowColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
        // elevation: 0,
        // backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
            Container(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('오롯에 오신걸 환영해요!',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  RichText(text:
                  const TextSpan(
                      text: '가입약관',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '을 확인해 주세요',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]
                  ),
                  ),
                  Container(height: 15,),
                  Terms(),
                ],
              ),
            ),
            Container(height: 48,),
          ]
      ),
    );
  }
}



class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {

  var allChecked = false;
  late List<bool> isChecked = [false, false, false, false, false];
  final List<String> terms = [
    '[필수] 서비스 이용약관 동의',
    '[필수] 개인정보 수집 및 이용약관 동의',
    '[필수] 보안 및 데이터 활용 동의',
    '[선택] 위치기반 서비스 동의',
    '[선택] 마케팅 정보 수신 및 활용 동의',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    allChecked = !allChecked;
                  });
                  },
                icon: Icon(Icons.check_circle_rounded,
                  color: (allChecked == true) ? Style.bg_purple : Style.light_purple,
                ),
              ),
              Text('전체동의',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        for (var i = 0; i < 5; i += 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isChecked[i] = !isChecked[i];
                      });
                    },
                    icon: Icon(Icons.check_rounded,
                      color: (allChecked == true || isChecked[i]) ? Style.bg_purple : Style.light_purple,
                    ),
                  ),
                  Text('${terms[i]}',
                    style: TextStyle(
                      color: Style.light_black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded, color: Style.icon_gray,),
              ),
            ],
          ),
          Container(height:  (allChecked == false || isChecked == false) ? 49: 0,),
          Visibility(
            visible: (allChecked == false || isChecked == false) ? true : false,
            child: Container(
              width: 246,
              height: 34,
              decoration: BoxDecoration(
                color: Style.attention_gray,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Style.light_yellow,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset('images/svg/ic_snack_caution.svg'),
                    ),
                  ),
                  Container(width: 8,),
                  Text('[필수] 동의사항은 모두 눌러주세요.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),),
                ],
              ),
            ),
          ),
        Container(
          height: (allChecked == false || isChecked == false) ? 16: 100,
        ),
          Container(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
                  onPressed: () {
                    if(allChecked == true);
                      else if(isChecked == true);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewMember()));
                  },
                  child: Text('확인'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (allChecked == true || isChecked == true) ? Style.bg_purple : Style.bg_light_gray,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    shadowColor: Colors.transparent,
                  ),
            ),
          ),

      ],
    );
  }
}