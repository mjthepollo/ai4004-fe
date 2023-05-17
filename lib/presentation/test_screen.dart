import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(20 * fem, 120 * fem, 20 * fem, 0 * fem),
      child: Center(
        child: Column(
          children: [
            SizedBox(
                width: 150 * fem,
                child: Image.asset('assets/images/download-3-1.png')),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 0 * fem, 0 * fem),
              child: const Text(
                "나의 캐릭터",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //Gridview()
            Container(
              width: 120,
              height: 60,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
