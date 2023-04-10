import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step2/global_assets/style.dart';
import 'package:step2/pages/new_member_second_page.dart';

class NewMember extends StatelessWidget {
  const NewMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Navigation(),
          Container(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text:
                  const TextSpan(
                    text: '초산/경산 여부',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  children: [
                      TextSpan(
                      text: '를',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]
                 ),
                ),
                Text('선택해 주세요',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Container(height: 15,),
                Text('입력한 정보는 ‘마이페이지 > 개인정보 수정’에서 수정이 가능합니다.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(height: 48,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: SelectButton(),
          ),
        ]
      ),
    );
  }
}


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for(int i=0; i<=6; i++)
          if(i<2)
          SvgPicture.asset(
             'images/svg/bar_color.svg'
          )
         else if(i>2)
          SvgPicture.asset(
            'images/svg/bar_none.svg'
          )
      ],
    );
  }
}


class SelectButton extends StatefulWidget {
  const SelectButton({Key? key}) : super(key: key);

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  var _select;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRadioButton(
          height: 48,
          elevation: 0,
          horizontal: true,
          enableShape: true,
          unSelectedBorderColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          spacing: 0,
          unSelectedColor: Style.light_purple,
          buttonLables: [
            '초산이에요',
            '경산이에요',
          ],
          buttonValues: [
            true,
            false,
          ],
          buttonTextStyle: ButtonTextStyle(
              selectedColor: Colors.white,
              unSelectedColor: Colors.white,
              textStyle: TextStyle(fontSize: 16),
          ),
          radioButtonValue: (value) {
            setState(() {
              _select=value;
            });
          },
          selectedColor: Style.bg_purple,

        ),
        Container(
          height: 177,
        ),
        Container(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
              onPressed: () {
                if(_select == true || _select == false)
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewMemberSecond()));
              },
              child: Text(
                '다음',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: (_select == true || _select == false) ? Style.bg_purple : Style.bg_light_gray,
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
