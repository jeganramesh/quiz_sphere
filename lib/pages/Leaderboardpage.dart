import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import '../widgets/bottom_navbar.dart'; // Import the new BottomNavBar widget
import '../pages/HomeScreen.dart'; // Import HomeScreen for navigation

class Leaderboardpage extends StatefulWidget {
  const Leaderboardpage({super.key});

  @override
  State<Leaderboardpage> createState() => _LeaderboardpageState();
}

class _LeaderboardpageState extends State<Leaderboardpage> {
  int _selectedIndex = 3; // Assuming Leaderboard is index 3

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the HomeScreen and handle page changes there
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(initialIndex: index),
      ),
    );
  }

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
                          //text of percentages
                          Positioned(
                            left: 0.0,
                            top: constraints.maxHeight *
                                0.460, // Approximately 440/956
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: ErrorBoundary(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 36.0),
                                    width: constraints.maxWidth *
                                        0.89, // Approximately 392/440
                                    height: constraints.maxHeight *
                                        0.346, // Approximately 331/956
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "Ravi",
                                                style: GoogleFonts.inter(
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                '''Ananya
''',
                                                style: GoogleFonts.inter(
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "Pooja",
                                                style: GoogleFonts.inter(
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "Amit",
                                                style: GoogleFonts.inter(
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "Sunita",
                                                style: GoogleFonts.inter(
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
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
                          ), //Group 7
                          Positioned(
                            top: constraints.maxHeight *
                                0.258, // Approximately 246.9/956
                            left: constraints.maxWidth *
                                0.084, // Approximately 37/440
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/group_7.svg",
                                width: constraints.maxWidth *
                                    0.831, // Approximately 366/440
                                height: constraints.maxHeight *
                                    0.014, // Approximately 13.2/956
                              ),
                            ),
                          ), //Average score:
                          Positioned(
                            top: constraints.maxHeight *
                                0.307, // Approximately 294/956
                            left: constraints.maxWidth *
                                0.073, // Approximately 32/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.59, // Approximately 260/440
                                child: Text(
                                  "Average score:",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 21.0,
                                    decoration: TextDecoration.none,
                                    letterSpacing: (1.000000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //65%
                          Positioned(
                            top: constraints.maxHeight *
                                0.308, // Approximately 295/956
                            right: 0.0,
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.561, // Approximately 247/440
                                child: Text(
                                  "65%",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 21.0,
                                    decoration: TextDecoration.none,
                                    letterSpacing: (1.000000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //Dashboard
                          Positioned(
                            top: constraints.maxHeight *
                                0.387, // Approximately 370/956
                            left: constraints.maxWidth *
                                0.075, // Approximately 33/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.865, // Approximately 381/440
                                child: Text(
                                  "Dashboard",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 27.0,
                                    decoration: TextDecoration.none,
                                    letterSpacing: (1.000000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //back side of each persentage
                          Positioned(
                            top: constraints.maxHeight *
                                0.504, // Approximately 482.4/956
                            left: constraints.maxWidth *
                                0.069, // Approximately 30.3/440
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/back_side_of_each_persentage.svg",
                                height: constraints.maxHeight *
                                    0.331, // Approximately 317.3/956
                                width: constraints.maxWidth *
                                    0.837, // Approximately 368.2/440
                              ),
                            ),
                          ), //ananya pecentage
                          Positioned(
                            top: constraints.maxHeight *
                                0.504, // Approximately 482.4/956
                            left: constraints.maxWidth *
                                0.069, // Approximately 30.3/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.839, // Approximately 369.2/440
                                clipBehavior: Clip.none,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Color.fromRGBO(71, 222, 165, 1.0),
                                ),
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15.1/956
                              ),
                            ),
                          ), //Rectangle 5927
                          Positioned(
                            top: constraints.maxHeight *
                                0.583, // Approximately 558/956
                            left: constraints.maxWidth *
                                0.069, // Approximately 30.3/440
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/rectangle_5927.svg",
                                width: constraints.maxWidth *
                                    0.630, // Approximately 277.4/440
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15/956
                              ),
                            ),
                          ), //Rectangle 5928
                          Positioned(
                            top: constraints.maxHeight *
                                0.662, // Approximately 633.6/956
                            left: constraints.maxWidth *
                                0.069, // Approximately 30.3/440
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/rectangle_5928.svg",
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15/956
                                width: constraints.maxWidth *
                                    0.500, // Approximately 219.9/440
                              ),
                            ),
                          ), //Rectangle 5928
                          Positioned(
                            top: constraints.maxHeight *
                                0.741, // Approximately 709.1/956
                            left: constraints.maxWidth *
                                0.071, // Approximately 31.3/440
                            child: ErrorBoundary(
                              child: Container(
                                clipBehavior: Clip.none,
                                width: constraints.maxWidth *
                                    0.417, // Approximately 183.6/440
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Color.fromRGBO(252, 198, 77, 1.0),
                                ),
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15/956
                              ),
                            ),
                          ), //Rectangle 5928
                          Positioned(
                            left: constraints.maxWidth *
                                0.073, // Approximately 32.3/440
                            top: constraints.maxHeight *
                                0.820, // Approximately 784.7/956
                            child: ErrorBoundary(
                              child: Container(
                                clipBehavior: Clip.none,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Color.fromRGBO(252, 198, 77, 1.0),
                                ),
                                width: constraints.maxWidth *
                                    0.362, // Approximately 159.4/440
                                height: constraints.maxHeight *
                                    0.015, // Approximately 15/956
                              ),
                            ),
                          ), //text of percentages
                          Positioned(
                            top: constraints.maxHeight *
                                0.458, // Approximately 438/956
                            right: 0.0,
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: ErrorBoundary(
                                  child: Container(
                                    padding: EdgeInsets.only(right: 32.0),
                                    width: constraints.maxWidth *
                                        0.223, // Approximately 98/440
                                    height: constraints.maxHeight *
                                        0.346, // Approximately 331/956
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "100%",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "92%",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "76%",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "63%",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 52.0),
                                        ErrorBoundary(
                                          child: LayoutBuilder(
                                            builder: (
                                              BuildContext context,
                                              constraints,
                                            ) =>
                                                Container(
                                              width: constraints.maxWidth,
                                              child: Text(
                                                "48%",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing:
                                                      (2.000000 / 100) * 14,
                                                  color: Color.fromRGBO(
                                                    0,
                                                    0,
                                                    0,
                                                    1.0,
                                                  ),
                                                  fontSize: 21.0,
                                                  decoration:
                                                      TextDecoration.none,
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
                          ), //Chapter 1 75% Student completed
                          Positioned(
                            top: constraints.maxHeight *
                                0.146, // Approximately 140/956
                            left: constraints.maxWidth *
                                0.077, // Approximately 34/440
                            child: ErrorBoundary(
                              child: Container(
                                width: constraints.maxWidth *
                                    0.645, // Approximately 284/440
                                child: RichText(
                                  text: TextSpan(
                                    text: '''Chapter 1
''',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 24.0,
                                      decoration: TextDecoration.none,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "75%",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(0, 0, 0, 1.0),
                                          fontSize: 21.0,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Student completed",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1.0),
                                          fontSize: 21.0,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ), //Ai logo
                          Positioned(
                            top: constraints.maxHeight *
                                0.812, // Approximately 777/956
                            left: constraints.maxWidth *
                                0.76, // Approximately 335/440
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/ai_logo_1.svg",
                                width: 72.0,
                                height: 72.0,
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
                                            "assets/images/vector_7.svg",
                                            width: constraints.maxWidth *
                                                0.032, // Approximately 14/440
                                            height: constraints.maxHeight *
                                                0.023, // Approximately 22/956
                                          ),
                                        ),
                                      ),
                                    ), //Leaderboard
                                    Positioned(
                                      top: constraints.maxHeight *
                                          0.031, // Approximately 30/956
                                      left: constraints.maxWidth *
                                          0.259, // Adjusted for better centering
                                      child: ErrorBoundary(
                                        child: Container(
                                          width: constraints.maxWidth *
                                              0.504, // Approximately 222/440
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Leaderboard",
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
                          ), //Rectangle 5977
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: ErrorBoundary(
                              child: BottomNavBar(
                                selectedIndex: _selectedIndex,
                                onTap: _onItemTapped,
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
