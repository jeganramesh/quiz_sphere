import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import '../pages/chatpagequiz.dart';
import '../widgets/bottom_navbar.dart'; // Import the new widget

class lessonspage1 extends StatelessWidget {
  const lessonspage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorBoundary(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1.0)),
          child: SingleChildScrollView(
            child: InkWell(
              onTap: () {},
              child: ErrorBoundary(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: LayoutBuilder(
                      builder: (BuildContext context, constraints) => Stack(
                        children: [
                          //Rectangle 5937
                          Positioned(
                            left: 24.0,
                            top: constraints.maxHeight *
                                0.131, // Approximately 125/956
                            child: ErrorBoundary(
                              child: Container(
                                height: constraints.maxHeight *
                                    0.237, // Approximately 227/956
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  color: Color.fromRGBO(254, 254, 254, 1.0),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4.0,
                                      offset: Offset(0.0, 4.0),
                                    ),
                                  ],
                                ),
                                clipBehavior: Clip.none,
                                width: constraints.maxWidth *
                                    0.895, // Approximately 394/440
                              ),
                            ),
                          ), //3/5 quizes completed
                          Positioned(
                            top: constraints.maxHeight *
                                0.286, // Approximately 274/956
                            left: constraints.maxWidth *
                                0.107, // Approximately 47/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.472, // Approximately 208/440
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "3/5 quizes completed",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19.0,
                                      color: Color.fromRGBO(134, 134, 134, 1.0),
                                      decoration: TextDecoration.none,
                                      letterSpacing: (0.500000 / 100) * 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ), //What is Electricity? Electricity?
                          Positioned(
                            left: 41.0,
                            top: constraints.maxHeight *
                                0.155, // Approximately 148/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.663, // Approximately 292/440
                                child: Text(
                                  '''What is Electricity?
Electricity?''',
                                  style: GoogleFonts.inter(
                                    fontSize: 34.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //Rectangle 5946
                          Positioned(
                            left: 41.0,
                            top: constraints.maxHeight *
                                0.258, // Approximately 247/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.793, // Approximately 349/440
                                clipBehavior: Clip.none,
                                height: constraints.maxHeight *
                                    0.014, // Approximately 14/956
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(221, 221, 221, 1.0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ), //Rectangle 5947
                          Positioned(
                            left: 41.0,
                            top: constraints.maxHeight *
                                0.258, // Approximately 247/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.425, // Approximately 187/440
                                clipBehavior: Clip.none,
                                height: constraints.maxHeight *
                                    0.014, // Approximately 14/956
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(76, 213, 162, 1.0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ), //Rectangle 5938
                          Positioned(
                            top: constraints.maxHeight *
                                0.384, // Approximately 367/956
                            left: constraints.maxWidth *
                                0.061, // Approximately 27/440
                            child: ErrorBoundary(
                              child: Container(
                                clipBehavior: Clip.none,
                                width: constraints.maxWidth *
                                    0.897, // Approximately 395/440
                                height: constraints.maxHeight *
                                    0.199, // Approximately 190/956
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    width: 3,
                                    style: BorderStyle.solid,
                                    strokeAlign: BorderSide.strokeAlignInside,
                                  ),
                                  color: Color.fromRGBO(237, 248, 242, 1.0),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4.0,
                                      offset: Offset(0.0, 4.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), //learning objectives:
                          Positioned(
                            left: 20.0,
                            top: constraints.maxHeight *
                                0.407, // Approximately 389/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.570, // Approximately 251/440
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "learning objectives:",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 19.0,
                                      decoration: TextDecoration.none,
                                      letterSpacing: (1.000000 / 100) * 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ), //Understand Ohm’s law and applications Differentiate between series & parallel circuits.
                          Positioned(
                            left: 51.0,
                            top: constraints.maxHeight *
                                0.448, // Approximately 428/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.743, // Approximately 327/440
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "● Understand Ohm’s law and applications",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none,
                                          letterSpacing: (0.500000 / 100) * 14,
                                          color: Color.fromRGBO(
                                            132,
                                            138,
                                            134,
                                            1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "● Differentiate between series & parallel circuits.",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none,
                                          letterSpacing: (0.500000 / 100) * 14,
                                          color: Color.fromRGBO(
                                            132,
                                            138,
                                            134,
                                            1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), //Rectangle 5939
                          Positioned(
                            top: constraints.maxHeight *
                                0.598, // Approximately 572/956
                            left: constraints.maxWidth *
                                0.054, // Approximately 24/440
                            child: ErrorBoundary(
                              child: Container(
                                height: constraints.maxHeight *
                                    0.179, // Approximately 171/956
                                clipBehavior: Clip.none,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Color.fromRGBO(254, 254, 254, 1.0),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4.0,
                                      offset: Offset(0.0, 4.0),
                                    ),
                                  ],
                                ),
                                width: constraints.maxWidth *
                                    0.897, // Approximately 395/440
                              ),
                            ),
                          ), //Circuits and Current
                          Positioned(
                            left: 43.0,
                            top: constraints.maxHeight *
                                0.622, // Approximately 595/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.675, // Approximately 297/440
                                child: Text(
                                  "Circuits and Current",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 31.0,
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //Rectangle 5948
                          Positioned(
                            top: constraints.maxHeight *
                                0.687, // Approximately 657/956
                            left: constraints.maxWidth *
                                0.095, // Approximately 42/440
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                  ),
                                  color: Color.fromRGBO(217, 217, 217, 1.0),
                                ),
                                width: constraints.maxWidth *
                                    0.793, // Approximately 349/440
                                clipBehavior: Clip.none,
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15/956
                              ),
                            ),
                          ), //0/4 quizes completed
                          Positioned(
                            left: 50.0,
                            top: constraints.maxHeight *
                                0.732, // Approximately 700/956
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.659, // Approximately 290/440
                                child: Text(
                                  "0/4 quizes completed",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 19.0,
                                    color: Color.fromRGBO(134, 134, 134, 1.0),
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //Rectangle 5934
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                        0,
                                        0,
                                        0,
                                        0.12999999523162842,
                                      ),
                                      spreadRadius: 0.0,
                                      blurRadius: 20.0,
                                      offset: Offset(0.0, 4.0),
                                    ),
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                ),
                                height: constraints.maxHeight *
                                    0.10, // Adjusted height for top menu bar
                                width: constraints.maxWidth,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: constraints.maxHeight *
                                          0.041, // Approximately 39/956
                                      left: constraints.maxWidth *
                                          0.075, // Approximately 33/440
                                      child: ErrorBoundary(
                                        child: InkWell(
                                          onTap: () {},
                                          child: SvgPicture.asset(
                                            "assets/images/vector.svg",
                                            width: constraints.maxWidth *
                                                0.032, // Approximately 14/440
                                            height: constraints.maxHeight *
                                                0.023, // Approximately 22/956
                                          ),
                                        ),
                                      ),
                                    ), //Lessons
                                    Positioned(
                                      top: constraints.maxHeight *
                                          0.029, // Approximately 28/956
                                      left: constraints.maxWidth *
                                          0.259, // Adjusted for better centering
                                      child: ErrorBoundary(
                                        child: Container(
                                          width: constraints.maxWidth *
                                              0.504, // Approximately 222/440
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Lessons",
                                              style: GoogleFonts.inter(
                                                letterSpacing:
                                                    (2.000000 / 100) * 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 1.0),
                                                fontSize: 27.0,
                                                decoration: TextDecoration.none,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), //Download | Mark as Recieved
                          Positioned(
                            top: constraints.maxHeight *
                                0.851, // Approximately 814/956
                            left: constraints.maxWidth *
                                0.186, // Approximately 82/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.752, // Approximately 331/440
                                child: Text(
                                  "Download    |    Mark as Recieved",
                                  style: GoogleFonts.inter(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(147, 147, 146, 1.0),
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //AI  logo
                          Positioned(
                            top: constraints.maxHeight *
                                0.812, // Approximately 777/956
                            left: constraints.maxWidth *
                                0.76, // Approximately 335/440
                            child: ErrorBoundary(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => chatpagequiz(),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  "assets/images/ai_logo.svg",
                                  width: constraints.maxWidth *
                                      0.164, // Approximately 72/440
                                  height: constraints.maxHeight *
                                      0.075, // Approximately 72/956
                                ),
                              ),
                            ),
                          ), //Rectangle 5977
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0.0, 0.0),
                                      spreadRadius: 0.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                ),
                                height: constraints.maxHeight *
                                    0.07, // Adjusted height for menu bar
                                width: constraints.maxWidth,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Home Screen Icon (vector_133.svg)
                                    ErrorBoundary(
                                      child: SvgPicture.asset(
                                        "assets/images/vector_133.svg",
                                        width: 22.0,
                                        height: 22.0,
                                      ),
                                    ),
                                    // Note Icon (Placeholder)
                                    ErrorBoundary(
                                      child: Container(
                                        width: 22.0,
                                        height: 22.0,
                                        // Placeholder for a note icon, replace with actual SVG if available
                                        child: Icon(Icons.note_alt_outlined),
                                      ),
                                    ),
                                    // Game Icon (Placeholder)
                                    ErrorBoundary(
                                      child: Container(
                                        width: 27.0,
                                        height: 22.0,
                                        // Placeholder for a game icon, replace with actual SVG if available
                                        child: Icon(Icons.gamepad_outlined),
                                      ),
                                    ),
                                    // Leaderboard Icon (leaderboard.svg)
                                    ErrorBoundary(
                                      child: SvgPicture.asset(
                                        "assets/images/leaderboard.svg",
                                        height: 22.0,
                                        width: 27.0,
                                      ),
                                    ),
                                    // Profile Icon (profile_logo.svg)
                                    ErrorBoundary(
                                      child: SvgPicture.asset(
                                        "assets/images/profile_logo.svg",
                                        width: 22.0,
                                        height: 22.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
