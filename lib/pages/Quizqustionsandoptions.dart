import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import '../pages/chatpagequiz.dart';
import '../pages/quizanswerselection.dart';

class Quizqustionsandoptions extends StatelessWidget {
  const Quizqustionsandoptions({super.key});

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
                height: 956.0,
                child: LayoutBuilder(
                  builder: (BuildContext context, constraints) => Stack(
                    children: [
                      //Rectangle 5955
                      Positioned(
                        top: 363.0,
                        left: 23.0,
                        child: ErrorBoundary(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 254, 254, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1.0),
                                width: 2,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            width: 187.0,
                            height: 105.0,
                            clipBehavior: Clip.none,
                          ),
                        ),
                      ), //Ampere
                      Positioned(
                        left: 65.0,
                        top: 397.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 97.0 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Ampere",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                  letterSpacing: (0.500000 / 100) * 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Rectangle 5956
                      Positioned(
                        top: 363.0,
                        left: 231.0,
                        child: ErrorBoundary(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => quizanswerselection(),
                                ),
                              );
                            },
                            child: Container(
                              width: 187.0,
                              height: 105.0,
                              clipBehavior: Clip.none,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(217, 217, 217, 1.0),
                                  width: 2,
                                  style: BorderStyle.solid,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ), //Ohm
                      Positioned(
                        top: 403.0,
                        left: 291.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 59.0 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Ohm",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                  letterSpacing: (0.500000 / 100) * 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Rectangle 5955
                      Positioned(
                        left: 23.0,
                        top: 496.0,
                        child: ErrorBoundary(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 254, 254, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1.0),
                                width: 2,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            width: 187.0,
                            height: 105.0,
                            clipBehavior: Clip.none,
                          ),
                        ),
                      ), //Volt
                      Positioned(
                        top: 533.0,
                        left: 90.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 48.0 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Volt",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                  letterSpacing: (0.500000 / 100) * 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Rectangle 5956
                      Positioned(
                        top: 496.0,
                        left: 231.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 187.0,
                            height: 105.0,
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253, 253, 253, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1.0),
                                width: 2,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ), //Rectangle 5957
                      Positioned(
                        left: 23.0,
                        top: 747.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 390.0,
                            height: 80.0,
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(72, 214, 164, 1.0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ), //Next Question
                      Positioned(
                        left: 114.0,
                        top: 769.0,
                        child: ErrorBoundary(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => quizanswerselection(),
                                ),
                              );
                            },
                            child: Container(
                              width: 205.0 + 10,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            quizanswerselection(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Next Question",
                                    style: GoogleFonts.inter(
                                      fontSize: 29.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1.0),
                                      decoration: TextDecoration.none,
                                      letterSpacing: (0.500000 / 100) * 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ), //Chapter 1 :Electricity Quiz 00:45
                      Positioned(
                        top: 40.0,
                        left: 46.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 401.0 + 2,
                            child: Text(
                              "Chapter 1 :Electricity Quiz        00:45 ",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 21.0,
                                decoration: TextDecoration.none,
                                letterSpacing: (0.500000 / 100) * 14,
                              ),
                            ),
                          ),
                        ),
                      ), //What is the unit of electrical resistance?
                      Positioned(
                        left: 40.0,
                        top: 169.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 358.0 + 2,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "What is the unit of electrical resistance?",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 31.0,
                                  decoration: TextDecoration.none,
                                  letterSpacing: (0.500000 / 100) * 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Watt
                      Positioned(
                        top: 533.0,
                        left: 288.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 72.0 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Watt",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 24.0,
                                  decoration: TextDecoration.none,
                                  letterSpacing: (0.500000 / 100) * 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Icon
                      Positioned(
                        top: constraints.maxHeight * 0.043933054393305436,
                        left: constraints.maxWidth * 0.7545454545454545,
                        child: ErrorBoundary(
                          child: SizedBox(
                            height: constraints.maxHeight * 0.02092050209205021,
                            width: constraints.maxWidth * 0.04772727272727273,
                            child: SvgPicture.asset(
                              "assets/images/icon_2.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ), //Vector
                      Positioned(
                        top: 42.0,
                        left: 16.0,
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
                              "assets/images/vector_49.svg",
                              width: 14.0,
                              height: 22.0,
                            ),
                          ),
                        ),
                      ), //Rectangle 5977
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
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
                            height: 80.0,
                            width: 440.0,
                          ),
                        ),
                      ), //Vector
                      Positioned(
                        top: 905.0,
                        left: 56.0,
                        child: ErrorBoundary(
                          child: SvgPicture.asset(
                            "assets/images/vector_50.svg",
                            width: 22.0,
                            height: 22.0,
                          ),
                        ),
                      ), //react-icons/BiSearch
                      Positioned(
                        top: 901.0,
                        left: 128.0,
                        child: ErrorBoundary(
                          child: Container(decoration: BoxDecoration()),
                        ),
                      ), //react-icons/MdOutlineLeaderboard
                      Positioned(
                        top: 904.0,
                        left: 283.0,
                        child: ErrorBoundary(
                          child: Container(decoration: BoxDecoration()),
                        ),
                      ), //Vector
                      Positioned(
                        top: 905.0,
                        left: 206.0,
                        child: ErrorBoundary(
                          child: SvgPicture.asset(
                            "assets/images/vector_53.svg",
                            height: 22.0,
                            width: 27.0,
                          ),
                        ),
                      ), //react-icons/CgProfile
                      Positioned(
                        top: 903.0,
                        left: 358.0,
                        child: ErrorBoundary(
                          child: Container(decoration: BoxDecoration()),
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
