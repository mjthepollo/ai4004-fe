import 'package:ai4005_fe/util/color.dart';
import 'package:ai4005_fe/widget/text_field_input.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class InvitationScreen extends StatefulWidget {
  const InvitationScreen({super.key});

  @override
  State<InvitationScreen> createState() => _InvitationScreenState();
}

class _InvitationScreenState extends State<InvitationScreen> {
  final TextEditingController _newUsernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 310 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 140 * fem,
              ),
              SizedBox(
                width: 176 * fem,
                child: Image.asset(
                  "assets/images/download-4-1.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 25 * fem,
              ),
              Text(
                "새로운 친구를 초대했어요",
                style: TextStyle(
                  fontFamily: 'SUITE',
                  color: mainTextColor,
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5 * fem,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '당신이 그린 그림이 새로운 친구로 만들어졌어요. 새로운 친구와 이야기 꽃을 피워보세요',
                  style: TextStyle(
                    fontFamily: 'SUITE',
                    color: subTextColor,
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 5 * fem,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '새로운 친구가 도착하는 데 최대 24시간이 소요됩니다',
                  style: TextStyle(
                    fontFamily: 'SUITE',
                    color: interactiveTextColor,
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 25 * fem,
              ),
              TextFieldInput(
                textEditingController: _newUsernameController,
                hintText: "새로운 친구의 이름",
                textInputType: TextInputType.text,
                imageText: 'assets/images/user.png',
              ),
              SizedBox(
                height: 140 * fem,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Button(
                  width: 120 * fem,
                  text: '완료',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
