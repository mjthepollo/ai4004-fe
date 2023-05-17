import 'package:ai4005_fe/presentation/chat_screen.dart';
import 'package:flutter/material.dart';

import '../view_model/audio_recorder_controller.dart';
import '../widget/friend.dart';

class SelectCharacterScreen extends StatefulWidget {
  const SelectCharacterScreen({super.key});

  @override
  State<SelectCharacterScreen> createState() => _SelectCharacterScreenState();
}

class _SelectCharacterScreenState extends State<SelectCharacterScreen> {
  final List<Friend> friends = [
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0343-1.png', friend_name: '친구'),
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0344-1.png', friend_name: '도라에몽'),
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0345-1-bg.png',
        friend_name: '근육 짱짱맨'),
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // iphone14pro8wyx (26:114)
      padding: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 0 * fem, 0 * fem),
      width: double.infinity,
      height: 852 * fem,
      decoration: BoxDecoration(
        color: const Color(0xff411972),
        borderRadius: BorderRadius.circular(40 * fem),
      ),
      child: SizedBox(
        // 2Vc (49647899)
        width: double.infinity,
        height: 900 * fem,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // download31NJa (26:127)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
              width: 139 * fem,
              height: 106 * fem,
              child: Image.asset(
                'assets/images/download-3-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // rzS (26:128)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  '나의 캐릭터',
                  style: TextStyle(
                    fontFamily: 'SUITE',
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2575 * ffem / fem,
                    color: const Color(0xfffefefd),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 176,
            //   height: 176,
            //   child: Stack(
            //     children: <Widget>[
            //       Container(
            //         width: 128,
            //         height: 128,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15),
            //           image: const DecorationImage(
            //             image: AssetImage(
            //                 'assets/images/cleanshot-2023-05-16-at-03431.png'),
            //             fit: BoxFit.fitWidth,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(top: 151, left: 1),
            //         width: 175,
            //         height: 25,
            //         child: Stack(
            //           children: <Widget>[
            //             const Text(
            //               '노란색 귀요미',
            //               textAlign: TextAlign.left,
            //               style: TextStyle(
            //                 color: Color.fromRGBO(229, 198, 241, 1),
            //                 fontFamily: 'SUITE',
            //                 fontSize: 16,
            //                 letterSpacing: 0,
            //                 fontWeight: FontWeight.normal,
            //                 height: 1,
            //               ),
            //             ),
            //             Container(
            //               margin: const EdgeInsets.only(left: 95, top: 4),
            //               width: 11,
            //               height: 14,
            //               decoration: const BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage('assets/images/delete.png'),
            //                   fit: BoxFit.fitWidth,
            //                 ),
            //               ),
            //             ),
            //             Container(
            //               margin: const EdgeInsets.only(left: 110, top: 5),
            //               width: 13,
            //               height: 13,
            //               decoration: const BoxDecoration(
            //                 image: DecorationImage(
            //                   image: AssetImage('assets/images/edit.png'),
            //                   fit: BoxFit.fitWidth,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(top: 0, left: 106),
            //         width: 41,
            //         height: 41,
            //         decoration: BoxDecoration(
            //           color: const Color.fromRGBO(97, 65, 142, 1),
            //           border: Border.all(
            //             color: const Color.fromRGBO(82, 47, 129, 1),
            //             width: 3,
            //           ),
            //           borderRadius:
            //               const BorderRadius.all(Radius.elliptical(41, 41)),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(top: 10, left: 114),
            //         width: 26,
            //         height: 26,
            //         decoration: const BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage('assets/images/check-1.png'),
            //             fit: BoxFit.fitWidth,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 450 * fem,
              child: GridView.builder(
                itemCount: friends.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0, // Horizontal spacing
                  mainAxisSpacing: 1.0, // Vertical spacing
                ),
                itemBuilder: (BuildContext context, int index) {
                  return friends[index];
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                          audioRecorderController: AudioRecorderController()),
                    ));
              },
              child: Container(
                // autogroupc5bt9dQ (HgUdjMACuDhonZSS6mc5bt)
                width: double.infinity,
                height: 58 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffdce670),
                  borderRadius: BorderRadius.circular(100 * fem),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      '선택 완료\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SUITE',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 2.3 * ffem / fem,
                        color: const Color(0xff411972),
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
