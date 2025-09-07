import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import '../widgets/bottom_navbar.dart'; // Import the new BottomNavBar widget
import '../pages/HomeScreen.dart'; // Import HomeScreen for navigation

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 4; // Assuming Profile is index 4

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
                    height: 956.0,
                    child: LayoutBuilder(
                      builder: (BuildContext context, constraints) => Stack(
                        children: [
                          //AI  logo
                          Positioned(
                            top: 777.0,
                            left: 335.0,
                            child: ErrorBoundary(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                          initialIndex:
                                              1), // Navigate to Quiz page
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  "assets/images/ai_logo_2.svg",
                                  width: 72.0,
                                  height: 72.0,
                                ),
                              ),
                            ),
                          ), //Rectangle 5934
                          Positioned(
                            left: 3.0,
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
                                height: 90.0,
                                width: 440.0,
                              ),
                            ),
                          ), //Vector
                          Positioned(
                            top: 39.0,
                            left: 36.0,
                            child: ErrorBoundary(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                          initialIndex:
                                              0), // Navigate to Home page
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  "assets/images/vector_14.svg",
                                  width: 14.0,
                                  height: 22.0,
                                ),
                              ),
                            ),
                          ), //Profile
                          Positioned(
                            top: 30.0,
                            left: (constraints.maxWidth / 2) -
                                (440.0 / 2 - 117.0),
                            child: ErrorBoundary(
                              child: Container(
                                width: 212.0 + 10,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Profile",
                                    style: GoogleFonts.inter(
                                      letterSpacing: (2.000000 / 100) * 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 27.0,
                                      decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ), //Name
                          Positioned(
                            left: 141.0,
                            top: 147.0,
                            child: ErrorBoundary(
                              child: Container(
                                width: 244.0 + 10,
                                child: Text(
                                  '''Ananya
''',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13.0,
                                    color: Color.fromRGBO(34, 50, 99, 1.0),
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //Username
                          Positioned(
                            top: 173.0,
                            left: 141.0,
                            child: ErrorBoundary(
                              child: Container(
                                width: 156.0 + 10,
                                child: Text(
                                  "@svirthrischool",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.0,
                                    color: Color.fromRGBO(144, 152, 177, 1.0),
                                    decoration: TextDecoration.none,
                                    letterSpacing: (0.500000 / 100) * 14,
                                  ),
                                ),
                              ),
                            ),
                          ), //List
                          Positioned(
                            top: 240.0,
                            left:
                                (constraints.maxWidth / 2) - (440.0 / 2 - 18.0),
                            child: ErrorBoundary(
                              child: Container(
                                decoration: BoxDecoration(),
                                child: ErrorBoundary(
                                  child: Container(
                                    height: 498.0,
                                    width: 404.0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Language Toggle
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.328 +
                                                                10,
                                                            child: Text(
                                                              "Language Toggle ",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //English
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.7306666666666667,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2962962962962963,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.12 +
                                                                10,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Text(
                                                                "English",
                                                                style:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      11.0,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                    144,
                                                                    152,
                                                                    177,
                                                                    1.0,
                                                                  ),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .none,
                                                                  letterSpacing:
                                                                      (0.500000 /
                                                                              100) *
                                                                          14,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Date
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Badge Showcase
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.32266666666666666 +
                                                                10,
                                                            child: Text(
                                                              "Badge Showcase ",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Date
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Email
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.10666666666666667 +
                                                                10,
                                                            child: Text(
                                                              "Email",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //rex4dom@gmail.com
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.4826666666666667,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2962962962962963,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.368 +
                                                                10,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Text(
                                                                "rex4dom@gmail.com",
                                                                style:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      11.0,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                    144,
                                                                    152,
                                                                    177,
                                                                    1.0,
                                                                  ),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .none,
                                                                  letterSpacing:
                                                                      (0.500000 /
                                                                              100) *
                                                                          14,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Message
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Offline Challenge/Quiz
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.42933333333333334 +
                                                                10,
                                                            child: Text(
                                                              "Offline Challenge/Quiz",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Phone
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Uploaded Notes
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.30133333333333334 +
                                                                10,
                                                            child: Text(
                                                              "Uploaded Notes",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon -v
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.044,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Teacher Announcements
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.44533333333333336 +
                                                                10,
                                                            child: Text(
                                                              "Teacher Announcements",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 11.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Phone-v
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                        SizedBox(height: 20.0),
                                        ErrorBoundary(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: ErrorBoundary(
                                              child: Container(
                                                width: 375.0,
                                                height: 54.0,
                                                child: LayoutBuilder(
                                                  builder: (
                                                    BuildContext context,
                                                    constraints,
                                                  ) =>
                                                      Stack(
                                                    children: [
                                                      //Rectangle 392
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.0,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.0,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                            ),
                                                            width: constraints
                                                                    .maxWidth *
                                                                1.0,
                                                            height: constraints
                                                                    .maxHeight *
                                                                1.0,
                                                          ),
                                                        ),
                                                      ), //Teacher Corner Access
                                                      Positioned(
                                                        top: constraints
                                                                .maxHeight *
                                                            0.3333333333333333,
                                                        left: constraints
                                                                .maxWidth *
                                                            0.14933333333333335,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            width: constraints
                                                                        .maxWidth *
                                                                    0.44533333333333336 +
                                                                2,
                                                            child: Text(
                                                              " Teacher Corner Access",
                                                              style: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 13.0,
                                                                color: Color
                                                                    .fromRGBO(
                                                                  34,
                                                                  50,
                                                                  99,
                                                                  1.0,
                                                                ),
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                letterSpacing:
                                                                    (0.500000 /
                                                                            100) *
                                                                        14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Phone -w
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.042666666666666665,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ), //system icon/24px/Right
                                                      Positioned(
                                                        left: constraints
                                                                .maxWidth *
                                                            0.8933333333333333,
                                                        top: constraints
                                                                .maxHeight *
                                                            0.2777777777777778,
                                                        child: ErrorBoundary(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ), //profile logo
                          Positioned(
                            left: 50.0,
                            top: 147.0,
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/profile_logo.svg",
                                width: 50.0,
                                height: 50.0,
                              ),
                            ),
                          ), //AI  logo
                          Positioned(
                            left: -12039.0,
                            top: -2458.0,
                            child: ErrorBoundary(
                              child: SvgPicture.asset(
                                "assets/images/ai_logo_3.svg",
                                width: 72.0,
                                height: 72.0,
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
