import 'package:ai4005_fe/util/color.dart';
import 'package:ai4005_fe/widget/text_field_input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 209 * fem,
          ),
          Text(
            "로그인",
            style: TextStyle(
              fontFamily: 'SUITE',
              color: mainTextColor,
              fontSize: 32 * ffem,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 3 * fem,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "계정이 없으신가요??",
                style: TextStyle(
                  fontFamily: 'SUITE',
                  color: subTextColor,
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                  fontFamily: 'SUITE',
                  color: subTextColor,
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "회원가입",
                  style: TextStyle(
                    fontFamily: 'SUITE',
                    color: interactiveTextColor,
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25 * fem),
          SizedBox(
            height: 20 * fem,
          ),
          TextFieldInput(
            imageText: 'assets/images/mail.png',
            textEditingController: _emailController,
            hintText: '이메일',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 20 * fem,
          ),
          TextFieldInput(
            imageText: 'assets/images/lock.png',
            textEditingController: _passwordController,
            hintText: '비밀번호',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 40 * fem,
          ),
          Container(
            width: 120 * fem,
            height: 54 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100 * fem),
              color: buttonColor,
            ),
            child: Center(
              child: Text(
                "로그인",
                style: TextStyle(
                  fontFamily: 'SUITE',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  color: buttonTextColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
