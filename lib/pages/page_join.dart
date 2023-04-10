import 'package:flutter/material.dart';
import 'package:step2/global_assets/style.dart';

class PageJoin extends StatelessWidget {
  const PageJoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40,),
                child: IconButton(onPressed: () {

                  },
                  icon: Icon(Icons.close, size: 24,),
                ),
              ),
            ],
          ),
          Container(height: 56,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('오롯에 오신걸 환영해요!', style: TextStyle(fontSize: 24,),),
                  RichText(
                    text: const TextSpan(
                        text: '가입약관',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '을 확인해주세요',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 32,
          ),
          Column(
            children: [
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.check_circle_rounded,
                      color: Color(0xffded9f9),
                      size: 24,
                    ),
                    ),
                    Text('전체동의',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Terms(),
            ],
          ),
        ],
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
  bool isChecked = false;

  void doIt() {

}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            TermsTitle(title: '[필수] 서비스 이용약관 동의'),
          ],
        ),Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            TermsTitle(title: '[필수] 서비스 이용약관 동의'),
          ],
        ),Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            TermsTitle(title: '[필수] 서비스 이용약관 동의'),
          ],
        ),Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            TermsTitle(title: '[선택] 서비스 이용약관 동의'),
          ],
        ),Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            TermsTitle(title: '[선택] 서비스 이용약관 동의'),
          ],
        ),
        Container(height: 49,),
        Container(
          width: 246,
          height: 34,
          padding: EdgeInsets.only(left: 14,),
          decoration: BoxDecoration(
            color: Style.bg_darkgray,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 18,
                height: 18,
                margin: EdgeInsets.only(right: 8,),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Style.light_yellow,
                ),
                child: Center(
                  child: Icon(Icons.question_mark_rounded, color: Colors.white, size: 10,),
                ),
              ),
              Text('[필수] 동의사항은 모두 눌러주세요.',
                style: TextStyle(fontSize: 14, color: Colors.white,),
              ),
            ],
          ),
        ),
        Container(height: 16,),
        ElevatedButton(
          onPressed: isChecked ? doIt : null,
          child: Text('확인'),
        ),
      ],
    );
  }
}


class TermsTitle extends StatelessWidget {
  const TermsTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Style.light_black,),),
          Icon(Icons.arrow_forward_ios_rounded, color: Style.light_gray,),
        ],
      ),
    );
  }
}
