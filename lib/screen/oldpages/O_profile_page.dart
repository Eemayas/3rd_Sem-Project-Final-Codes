import 'package:flutter/material.dart';

class profile_page extends StatelessWidget {
  static String ID = "profilepage";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String User_name = "Meal up";
    String phone_number = '+9779800000000';
    String Email_address = 'mealup@gmail.com';
    String address = 'Dhulikhel,Nepal';
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          height: height * 0.7,
          width: width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                //#3a1c71 → #d76d77 → #ffaf7b
                Color(0xff3a1c71),
                Color(0xffd76d77),
                Color(0xffffaf7b),
                // Colors.purple.shade900,
                // Colors.red.shade700,
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CustomPaint(
              size: Size(width, height),
              painter: CardCustomPainter(),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Image.asset(
                      'image/img.png',
                      color: Colors.purpleAccent.withOpacity(0.3),
                      width: width * 0.7,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Image.asset(
                      'image/2.png',
                      width: width * 0.7,
                      color: Colors.white70,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Center(
                            child: Image.asset(
                              'image/eye.png',
                              color: Colors.deepPurple[700],
                              width: width * 0.4,
                            ),
                          ),
                          Text(
                            User_name,
                            style: TextStyle(
                              color: Colors.deepPurple[700],
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Column(
                        children: [
                          detailWidget(
                            icon: Icons.phone,
                            text: phone_number,
                          ),
                          detailWidget(
                            icon: Icons.email,
                            text: Email_address,
                          ),
                          detailWidget(
                            icon: Icons.location_on,
                            text: address,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget detailWidget({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white70,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

class CardCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      //   ..shader =LinearGradient(
      //   // startOffset,
      //   // endOffset,
      //  colors:  [
      //      Color(0xffffdde1),
      //         Color(0xff753a88),
      //         Color(0xff48b1bf),
      //   ],
      //) as Shader?;
      // ..shader = LinearGradient(
      //   colors: [
      //     Color(0xffffdde1),
      //     Color(0xff753a88),
      //     Color(0xff48b1bf),
      //   ],
      // ).createShader(Rect.fromCircle(
      //   radius: 7,
      //   center: Offset(0, 0),
      // ))
      //..color = Color.fromARGB(255, 111, 165, 25)
      ..color = Color.fromARGB(255, 61, 116, 224)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.32);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.45,
        size.width * 0.49, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.73, size.height * 0.45, size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
