import 'package:ai4005_fe/presentation/login_screen.dart';
import 'package:ai4005_fe/presentation/select_character_screen.dart';
import 'package:ai4005_fe/util/color.dart';
import 'package:ai4005_fe/widget/text_field_input.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 209 * fem,
            ),
            Text(
              "가입하기",
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
                  "이미 사용중인가요?",
                  style: TextStyle(
                    fontFamily: 'SUITE',
                    color: subTextColor,
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 5 * fem,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginScreen())));
                  },
                  child: Text(
                    "로그인",
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
              imageText: 'assets/images/user.png',
              textEditingController: _usernameController,
              hintText: '김긍정',
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 20 * fem,
            ),
            TextFieldInput(
              imageText: 'assets/images/mail.png',
              textEditingController: _emailController,
              hintText: 'smile@gmail.com',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20 * fem,
            ),
            TextFieldInput(
              imageText: 'assets/images/lock.png',
              textEditingController: _passwordController,
              hintText: '비밀번호',
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 40 * fem,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SelectCharacterScreen())));
              },
              child: Button(
                width: 120 * fem,
                text: '회원가입',
              ),
            )
          ],
        ),
      ),
    );
  }
}
