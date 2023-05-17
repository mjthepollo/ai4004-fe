import 'package:ai4005_fe/view_model/audio_recorder_controller.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final AudioRecorderController audioRecorderController;
  const ChatScreen({
    required this.audioRecorderController,
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isRecording = false;
  bool _ableRecording = true;
  bool _talkingAI = false;

  void _onRecordButtonPressed() async {
    setState(() {
      _isRecording = !_isRecording;
    });

    if (_isRecording) {
      await widget.audioRecorderController.startRecording();
    } else {
      setState(() {
        _ableRecording = !_ableRecording;
      });
      String? filePath = await widget.audioRecorderController.stopRecording();
      if (filePath != null) {
        String audioUrl =
            await widget.audioRecorderController.sendAudioData(filePath);
        // DEBUG: Play audio file
        AudioPlayer audioPlayer = AudioPlayer();

        if (audioUrl != '') {
          await audioPlayer.setSourceUrl(audioUrl);
          setState(() {
            _talkingAI = !_talkingAI;
          });
          Duration? duration = await audioPlayer.getDuration();
          await audioPlayer.play(UrlSource(audioUrl));
          if (duration != null) {
            await Future.delayed(duration, () {
              setState(() {
                _talkingAI = !_talkingAI;
                _ableRecording = !_ableRecording;
              });
            });
          }
        } else {
          await audioPlayer.setSourceDeviceFile(filePath);
          setState(() {
            _talkingAI = !_talkingAI;
          });
          Duration? duration = await audioPlayer.getDuration();
          await audioPlayer.play(DeviceFileSource(filePath));
          if (duration != null) {
            await Future.delayed(duration, () {
              setState(() {
                _talkingAI = !_talkingAI;
                _ableRecording = !_ableRecording;
              });
            });
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 852 * fem,
        decoration: BoxDecoration(
          color: const Color(0xff411972),
          borderRadius: BorderRadius.circular(40 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // backgroundLaz (26:94)
              left: 197 * fem,
              top: 95 * fem,
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
            // Figma Flutter Generator Rectangle11Widget - RECTANGLE
            Positioned(
              left: 25 * fem,
              top: 182 * fem,
              child: Container(
                  width: 332 * fem,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: const [0.3, 0.8],
                      colors: _isRecording
                          ? [
                              const Color.fromRGBO(107, 204, 120, 0.8),
                              const Color.fromRGBO(107, 204, 120, 0),
                            ]
                          : _ableRecording
                              ? [
                                  const Color.fromRGBO(170, 51, 109, 0.8),
                                  const Color.fromRGBO(170, 51, 109, 0)
                                ]
                              : [
                                  const Color.fromRGBO(72, 72, 72, 0.8),
                                  const Color.fromRGBO(72, 72, 72, 0)
                                ],
                    ),
                  )),
            ),
            Positioned(
              // qgA (90110535)
              left: 18 * fem,
              top: 20 * fem,
              child: SizedBox(
                width: baseWidth,
                height: 3000 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // kYE (20227332)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 80 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      height: 31 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // UUE (26:86)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 20 * fem, 0 * fem),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                '귀여운 졸라맨',
                                style: TextStyle(
                                  fontFamily: 'SUITE',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575 * ffem / fem,
                                  color: const Color(0xfffefefd),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // PLJ (26:87)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 106 * fem, 0 * fem),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                '>',
                                style: TextStyle(
                                  fontFamily: 'SUITE',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // notification1V8S (26:92)
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
                            // settingBmx (26:90)
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
                    Container(
                      // line1hkJ (26:88)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: 133 * fem,
                      height: 2 * fem,
                      decoration: const BoxDecoration(
                        color: Color(0xff9f8ab8),
                      ),
                    ),
                    Container(
                      // SC6 (26:110)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 95 * fem),
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(
                          '다른 캐릭터와 대화 해보세요',
                          style: TextStyle(
                            fontFamily: 'SUITE',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xff977eb4),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // MK4 (89525357)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 60 * fem),
                      padding: EdgeInsets.fromLTRB(
                          17 * fem, 17 * fem, 18 * fem, 17 * fem),
                      width: 367 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff5a2f86),
                        borderRadius: BorderRadius.circular(30 * fem),
                      ),
                      child: Center(
                        // hiphopdancing214UN (25:85)
                        child: SizedBox(
                          width: 332 * fem,
                          height: 332 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30 * fem),
                            child: _talkingAI
                                ? Image.asset(
                                    'assets/gifs/punching_bag_AdobeExpress.gif',
                                    fit: BoxFit.cover,
                                  )
                                : _ableRecording
                                    ? Image.asset(
                                        'assets/gifs/happy_idle_AdobeExpress.gif',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'assets/images/hiphopdancing2-1.png',
                                        fit: BoxFit.cover,
                                      ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("hi");
                        if (_ableRecording) {
                          _onRecordButtonPressed();
                        }
                      },
                      child: Container(
                        // nvA (36324085)
                        margin: EdgeInsets.fromLTRB(
                            145 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 68 * fem,
                        height: 68 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xfffefdff)),
                          color: const Color(0x00d9d9d9),
                          borderRadius: BorderRadius.circular(34 * fem),
                        ),
                        child: Center(
                          // rectangle9aKp (26:109)
                          child: _isRecording
                              ? SizedBox(
                                  width: double.infinity,
                                  height: 33 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      color: const Color(0xffdce670),
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  width: double.infinity,
                                  height: 55 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(27.5 * fem),
                                      color: _ableRecording
                                          ? const Color(0xffb92771)
                                          : const Color(0xff727272),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
