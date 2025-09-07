import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import 'HomeScreen.dart';

class slashscreen3 extends StatelessWidget {
  const slashscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorBoundary(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1.0)),
          child: SingleChildScrollView(
            child: GestureDetector(
              onPanUpdate: (_) {},
              child: ErrorBoundary(
                child: GestureDetector(
                  onPanUpdate: (_) {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: LayoutBuilder(
                      builder: (BuildContext context, constraints) => Stack(
                        children: [
                          //Illustration
                          Positioned(
                            left: constraints.maxWidth *
                                0.045, // Adjusted for better centering
                            top: constraints.maxHeight *
                                0.157, // Approximately 150/956
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: ErrorBoundary(
                                  child: Container(
                                    width: 400.0,
                                    height: 400.0,
                                    child: LayoutBuilder(
                                      builder:
                                          (BuildContext context, constraints) =>
                                              Stack(
                                        children: [
                                          //Blob
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.06666666507720947,
                                            left: constraints.maxWidth *
                                                0.22400001525878907,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.8666065979003906,
                                                width: constraints.maxWidth *
                                                    0.552462158203125,
                                                child: SvgPicture.asset(
                                                  "assets/images/blob_1.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.646278076171875,
                                            left: constraints.maxWidth *
                                                0.38670654296875,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.15605157852172852,
                                                width: constraints.maxWidth *
                                                    0.18208860397338866,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_1.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path 162
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.6358446502685546,
                                            left: constraints.maxWidth *
                                                0.40851436614990233,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                width: constraints.maxWidth *
                                                    0.056529369354248044,
                                                height: constraints.maxHeight *
                                                    0.13164687156677246,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_162.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.3694737243652344,
                                            left: constraints.maxWidth *
                                                0.5171911239624023,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                width: constraints.maxWidth *
                                                    0.18560548782348632,
                                                height: constraints.maxHeight *
                                                    0.10077672958374023,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_2.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.1821022605895996,
                                            left: constraints.maxWidth *
                                                0.36023918151855466,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.4398667907714844,
                                                width: constraints.maxWidth *
                                                    0.3059344100952148,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_3.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Oval
                                          Positioned(
                                            left: constraints.maxWidth *
                                                0.3870683670043945,
                                            top: constraints.maxHeight *
                                                0.13374712944030762,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.11393020629882812,
                                                width: constraints.maxWidth *
                                                    0.09429436683654785,
                                                child: SvgPicture.asset(
                                                  "assets/images/oval.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Shape
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.32641727447509766,
                                            left: constraints.maxWidth *
                                                0.47298038482666016,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.051716337203979494,
                                                width: constraints.maxWidth *
                                                    0.025763847827911378,
                                                child: SvgPicture.asset(
                                                  "assets/images/shape.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.532271614074707,
                                            left: constraints.maxWidth *
                                                0.4611277389526367,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                height: constraints.maxHeight *
                                                    0.130870361328125,
                                                width: constraints.maxWidth *
                                                    0.23681892395019533,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_4.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path
                                          Positioned(
                                            left: constraints.maxWidth *
                                                0.33641529083251953,
                                            top: constraints.maxHeight *
                                                0.7700020599365235,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                width: constraints.maxWidth *
                                                    0.06065258502960205,
                                                height: constraints.maxHeight *
                                                    0.13609278678894043,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_5.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Oval
                                          Positioned(
                                            left: constraints.maxWidth *
                                                0.6453333282470703,
                                            top: constraints.maxHeight *
                                                0.16999998092651367,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                width: constraints.maxWidth *
                                                    0.13066672325134276,
                                                height: constraints.maxHeight *
                                                    0.13066665649414064,
                                                child: SvgPicture.asset(
                                                  "assets/images/oval_1.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Path 153
                                          Positioned(
                                            top: constraints.maxHeight *
                                                0.1633552360534668,
                                            left: constraints.maxWidth *
                                                0.6686619567871094,
                                            child: ErrorBoundary(
                                              child: SizedBox(
                                                width: constraints.maxWidth *
                                                    0.12528809547424316,
                                                height: constraints.maxHeight *
                                                    0.029997279644012453,
                                                child: SvgPicture.asset(
                                                  "assets/images/path_153.svg",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ), //Sports Health
                                          Positioned(
                                            top: 15.999999046325684,
                                            left: 74.13336944580078,
                                            child: ErrorBoundary(
                                              child: SvgPicture.asset(
                                                "assets/images/sports_health.svg",
                                                height: 346.4375,
                                                width: 257.43499755859375,
                                              ),
                                            ),
                                          ), //Shape
                                          Positioned(
                                            top: 71.7549057006836,
                                            left: 257.34857177734375,
                                            child: ErrorBoundary(
                                              child: SvgPicture.asset(
                                                "assets/images/shape_1.svg",
                                                height: 33.7449836730957,
                                                width: 52.59616470336914,
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
                          ), //Button
                          Positioned(
                            top: constraints.maxHeight *
                                0.878, // Approximately 840/956
                            left: constraints.maxWidth *
                                0.109, // Adjusted for better centering
                            child: ErrorBoundary(
                              child: Container(
                                width: 340.0,
                                height: 60.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(107, 78, 255, 1.0),
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
                          ), //Play smart. Win big. Learn forever.
                          Positioned(
                            top: constraints.maxHeight *
                                0.768, // Approximately 735/956
                            left: constraints.maxWidth *
                                0.097, // Adjusted for better centering
                            child: ErrorBoundary(
                              child: Container(
                                width: 355.0 + 2,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    '''Play smart. Win big. 
Learn forever.''',
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
                          ), //Gamify Learning. Empower Minds.
                          Positioned(
                            left: constraints.maxWidth *
                                0.154, // Adjusted for better centering
                            top: constraints.maxHeight *
                                0.643, // Approximately 615/956
                            child: ErrorBoundary(
                              child: Container(
                                width: 305.0 + 2,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    '''Gamify Learning. 
Empower Minds.''',
                                    style: GoogleFonts.inter(
                                      fontSize: 39.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      letterSpacing: (1.500000 / 100) * 14,
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
