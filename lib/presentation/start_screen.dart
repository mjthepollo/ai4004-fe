import 'package:ai4005_fe/presentation/login_screen.dart';
import 'package:ai4005_fe/presentation/signup_screen.dart';
import 'package:ai4005_fe/util/color.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/intersect.png',
              width: 120.68 * fem,
              height: 104 * fem,
            ),
          ),
          Positioned(
            top: 130 * fem,
            child: Image.asset(
              'assets/images/subtract.png',
              width: 94 * fem,
              height: 222.82 * fem,
            ),
          ),
          Positioned(
            top: 170 * fem,
            left: 290 * fem,
            child: Image.asset(
              'assets/images/intersect-4mC.png',
              width: 128 * fem,
              height: 255 * fem,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: baseWidth,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150 * fem,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "이미 계정이 있으신가요?",
                            style: TextStyle(
                              fontFamily: 'SUITE',
                              color: subTextColor,
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 8 * fem,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const LoginScreen())));
                            },
                            child: Text(
                              "로그인",
                              style: TextStyle(
                                fontFamily: 'SUITE',
                                color: interactiveTextColor,
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 160 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20 * fem,
                          bottom: 15 * fem,
                        ),
                        height: 155 * fem,
                        child: Image.asset("assets/images/person.png"),
                      ),
                      Text(
                        "안녕하세요! 이 세상에 하나뿐인 친구를 만나볼까요?",
                        style: TextStyle(
                          fontFamily: 'SUITE',
                          fontSize: 28 * ffem,
                          fontWeight: FontWeight.w700,
                          color: mainTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      Text(
                        "우선 회원 가입부터 진행해봐요",
                        style: TextStyle(
                          fontFamily: 'SUITE',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          color: subTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 80 * fem,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SignupScreen())));
                          },
                          child: Button(
                            text: "시작하기",
                            width: baseWidth * 7 / 8,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
