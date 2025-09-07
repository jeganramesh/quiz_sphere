import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import 'slashscreen3.dart';

class splashscreen2 extends StatelessWidget {
  const splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorBoundary(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1.0)),
          child: SingleChildScrollView(
            child: ErrorBoundary(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: LayoutBuilder(
                  builder: (BuildContext context, constraints) => Stack(
                    children: [
                      //A World of Questions. A Future of Answers.
                      Positioned(
                        top: constraints.maxHeight *
                            0.768, // Approximately 735/956
                        left: constraints.maxWidth *
                            0.14, // Adjusted for better centering
                        child: ErrorBoundary(
                          child: Container(
                            width: 315.0 + 2,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                '''A World of Questions. 
A Future of Answers.''',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(118, 118, 118, 1.0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ), //Button
                      Positioned(
                        bottom: constraints.maxHeight *
                            0.044, // Approximately 42/956
                        left: constraints.maxWidth *
                            0.09, // Adjusted for better centering
                        child: ErrorBoundary(
                          child: Container(
                            width: 340.0,
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => slashscreen3()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              child: Text(
                                'Next',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ), //Illustration
                      Positioned(
                        left: (constraints.maxWidth / 2) - (440.0 / 2 - 20.0),
                        top: constraints.maxHeight *
                            0.157, // Approximately 150/956
                        child: ErrorBoundary(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: ErrorBoundary(
                              child: Container(
                                height: 400.0,
                                width: 398.7030029296875,
                                child: LayoutBuilder(
                                  builder: (
                                    BuildContext context,
                                    constraints,
                                  ) =>
                                      Stack(
                                    children: [
                                      //Blob
                                      Positioned(
                                        left: constraints.maxWidth *
                                            0.22431343620595956,
                                        top: constraints.maxHeight *
                                            0.22201112747192384,
                                        child: ErrorBoundary(
                                          child: SizedBox(
                                            width: constraints.maxWidth *
                                                0.6060557456351849,
                                            height: constraints.maxHeight *
                                                0.4332329940795898,
                                            child: SvgPicture.asset(
                                              "assets/images/blob.svg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ), //Combined Shape
                                      Positioned(
                                        left: 307.99884033203125,
                                        top: 168.7460174560547,
                                        child: ErrorBoundary(
                                          child: SvgPicture.asset(
                                            "assets/images/combined_shape.svg",
                                            height: 77.25215148925781,
                                            width: 69.79154968261719,
                                          ),
                                        ),
                                      ), //Path
                                      Positioned(
                                        top: constraints.maxHeight *
                                            0.47367027282714846,
                                        left: constraints.maxWidth *
                                            0.3217878711336655,
                                        child: ErrorBoundary(
                                          child: SizedBox(
                                            height: constraints.maxHeight *
                                                0.07428275108337402,
                                            width: constraints.maxWidth *
                                                0.07372095704455517,
                                            child: SvgPicture.asset(
                                              "assets/images/path.svg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ), //Combined Shape
                                      Positioned(
                                        left: 190.30712890625,
                                        top: 145.3185272216797,
                                        child: ErrorBoundary(
                                          child: SvgPicture.asset(
                                            "assets/images/combined_shape_1.svg",
                                            height: 16.530941009521484,
                                            width: 13.632707595825195,
                                          ),
                                        ),
                                      ), //Group
                                      Positioned(
                                        top: 94.93333435058594,
                                        left: 20.200952529907227,
                                        child: ErrorBoundary(
                                          child: SvgPicture.asset(
                                            "assets/images/group.svg",
                                            width: 358.1210632324219,
                                            height: 209.79669189453125,
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
                      ), //Quiz Sphere
                      Positioned(
                        top: constraints.maxHeight *
                            0.65, // Approximately 622/956
                        left: constraints.maxWidth *
                            0.165, // Adjusted for better centering
                        child: ErrorBoundary(
                          child: Container(
                            width: 295.0 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: RichText(
                                text: TextSpan(
                                  text: "Quiz Sphere",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 49.0,
                                    decoration: TextDecoration.none,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " ",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 1.0),
                                        fontSize: 49.0,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
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
            ),
          ),
        ),
      ),
    );
  }
}
