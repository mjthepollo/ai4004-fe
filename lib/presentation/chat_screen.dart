import 'package:flutter/material.dart';

import '../util/util.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // iphone14pro7WV4 (26:98)
        width: double.infinity,
        height: 852 * fem,
        decoration: BoxDecoration(
          color: const Color(0xff411972),
          borderRadius: BorderRadius.circular(40 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupz89u2yC (APbyXAiyj9wiit92C7Z89u)
              left: 14 * fem,
              top: 77 * fem,
              child: SizedBox(
                width: 379 * fem,
                height: 532 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // backgroundwKU (26:99)
                      left: 183 * fem,
                      top: 18 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 196 * fem,
                          height: 250 * fem,
                          child: Image.asset(
                            'assets/images/background.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // waitingF5G (26:189)
                      left: 12 * fem,
                      top: 98 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 222 * fem,
                          height: 81 * fem,
                          child: Text(
                            'Waiting',
                            style: SafeGoogleFont(
                              'SUITE',
                              fontSize: 64 * ffem,
                              fontWeight: FontWeight.w900,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xb2dce670),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle88Px (26:100)
                      left: 0 * fem,
                      top: 166 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 367 * fem,
                          height: 366 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30 * fem),
                              color: const Color(0xff5a2f86),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // hiphopdancing21Eht (26:101)
                      left: 17 * fem,
                      top: 183 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 332 * fem,
                          height: 332 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30 * fem),
                            child: Image.asset(
                              'assets/images/hiphopdancing2-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // KzE (26:112)
                      left: 17 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 134 * fem,
                          height: 21 * fem,
                          child: Text(
                            '다른 캐릭터와 대화 해보세요',
                            style: SafeGoogleFont(
                              'SUITE',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff977eb4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupx6j1DZp (APbyEgCTYJ8ZF8yRQNx6j1)
              left: 31 * fem,
              top: 38 * fem,
              child: SizedBox(
                width: 332 * fem,
                height: 32 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroup3cbz8gn (APbyPLch427Yx5HMQy3cBZ)
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 106 * fem, 0 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // Tyx (26:102)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 46 * fem, 0 * fem),
                            child: Text(
                              '귀여운 졸라맨',
                              style: SafeGoogleFont(
                                'SUITE',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xfffefefd),
                              ),
                            ),
                          ),
                          Text(
                            // aHt (26:103)
                            '>',
                            style: SafeGoogleFont(
                              'SUITE',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // notification17oc (26:106)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                      width: 32 * fem,
                      height: 32 * fem,
                      child: Image.asset(
                        'assets/images/notification-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      // setting3BU (26:105)
                      width: 31 * fem,
                      height: 31 * fem,
                      child: Image.asset(
                        'assets/images/setting.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // line1mtA (26:104)
              left: 31 * fem,
              top: 72 * fem,
              child: Align(
                child: SizedBox(
                  width: 133 * fem,
                  height: 2 * fem,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff9f8ab8),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupweydtSz (APbyev157qACuH3s3iWEyd)
              left: 163 * fem,
              top: 720 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(18 * fem, 18 * fem, 17 * fem, 17 * fem),
                width: 68 * fem,
                height: 68 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xfffefdff)),
                  color: const Color(0x00d9d9d9),
                  borderRadius: BorderRadius.circular(34 * fem),
                ),
                child: Center(
                  // rectangle9aKp (26:109)
                  child: SizedBox(
                    width: double.infinity,
                    height: 33 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xffdce670),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
