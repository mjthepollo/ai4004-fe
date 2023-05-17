import 'package:flutter/material.dart';

import '../widget/friend.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final List<Friend> friends = [
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0343-1.png', friend_name: '친구'),
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0344-1.png', friend_name: '도라에몽'),
    const Friend(
        image_name: 'cleanshot-2023-05-16-at-0345-1-bg.png',
        friend_name: '근육 짱짱맨'),
    const Friend(image_name: 'mainchar..png', friend_name: '귀여운 졸라맨'),
  ];

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
            Container(
              width: 120,
              height: 60,
              color: Colors.white,
            ),
            Container(
              width: 350 * fem,
              height: 350 * fem,
              color: Colors.green,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: friends.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10, // Horizontal spacing
                  mainAxisSpacing: 10, // Vertical spacing
                ),
                itemBuilder: (BuildContext context, int index) {
                  return friends[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
