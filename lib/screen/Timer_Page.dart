import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({Key? key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isVisible = true;

  bool isPlaying = false;

  String get countText {
    Duration count = controller.duration! * controller.value;
    return controller.isDismissed
        ? '${controller.duration!.inHours}:${(controller.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${count.inHours}:${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  double progress = 1.0;

  void notify() {
    if (countText == '0:00:00') {
      // FlutterRingtonePlayer.playNotification();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );

    controller.addListener(() {
      notify();
      if (controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      } else {
        setState(() {
          progress = 1.0;
          isPlaying = false;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/background2.png",
              ),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.grey.shade300,
                            value: progress,
                            strokeWidth: 6,
                          ),
                        ),
                        AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) => Text(
                            countText,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: CupertinoTimerPicker(
                        initialTimerDuration: controller.duration!,
                        onTimerDurationChanged: (time) {
                          setState(() {
                            controller.duration = time;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (controller.isAnimating) {
                              controller.stop();
                              setState(() {
                                isPlaying = false;
                              });
                            } else {
                              controller.reverse(
                                  from: controller.value == 0
                                      ? 1.0
                                      : controller.value);
                              setState(() {
                                isPlaying = true;
                                isVisible = false;
                              });
                            }
                          },
                          child: RoundButton(
                            icon: isPlaying == true
                                ? Icons.pause
                                : Icons.play_arrow,
                            Detail: isPlaying == true ? "Pause" : "Play",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.reset();
                            setState(() {
                              isPlaying = false;
                              isVisible = true;
                            });
                          },
                          child: RoundButton(
                            Detail: "Reset",
                            icon: Icons.restore,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.grey.shade300,
                            value: progress,
                            strokeWidth: 6,
                          ),
                        ),
                        AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) => Text(
                            countText,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: CupertinoTimerPicker(
                              initialTimerDuration: controller.duration!,
                              onTimerDurationChanged: (time) {
                                setState(() {
                                  controller.duration = time;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (controller.isAnimating) {
                                    controller.stop();
                                    setState(() {
                                      isPlaying = false;
                                    });
                                  } else {
                                    controller.reverse(
                                        from: controller.value == 0
                                            ? 1.0
                                            : controller.value);
                                    setState(() {
                                      isPlaying = true;
                                      isVisible = false;
                                    });
                                  }
                                },
                                child: RoundButton(
                                  icon: isPlaying == true
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  Detail: isPlaying == true ? "Pause" : "Play",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.reset();
                                  setState(() {
                                    isPlaying = false;
                                    isVisible = true;
                                  });
                                },
                                child: RoundButton(
                                  Detail: "Reset",
                                  icon: Icons.restore,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.icon,
    required this.Detail,
  }) : super(key: key);
  final IconData icon;
  final String Detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Center(
        child: CircleAvatar(
          radius: 30,
          child: Column(
            children: [
              Icon(
                icon,
                size: 36,
              ),
              Text(
                Detail,
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
