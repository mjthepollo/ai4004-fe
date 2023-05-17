import 'package:flutter/material.dart';

class Making extends StatelessWidget {
  const Making({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return GestureDetector(
      onTap: () {
        print("really");
      },
      child: SizedBox(
        width: 10 * fem,
        height: 10 * fem,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 18 * fem,
            ),
            SizedBox(
                height: 105 * fem,
                child: Image.asset(
                  'assets/images/adding.png',
                  fit: BoxFit.fitHeight,
                )),
          ],
        ),
      ),
    );
  }
}
