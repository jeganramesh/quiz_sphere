import '../pages/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_sphere/error_boundary.dart';
import '../pages/loginscreen.dart';

class loginorsignupscreen extends StatelessWidget {
  const loginorsignupscreen({super.key});

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
                      //Let’s Play
                      Positioned(
                        left: constraints.maxWidth * 0.40752064098011365,
                        top: constraints.maxHeight * 0.7229056258580675,
                        child: ErrorBoundary(
                          child: Container(
                            width:
                                constraints.maxWidth * 0.18705740841952237 + 10,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Let’s Play",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19.0,
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ), //Frame 121075500
                      Positioned(
                        top: 837.0,
                        left: (constraints.maxWidth / 2) - (440.0 / 2 - 40.0),
                        child: ErrorBoundary(
                          child: Container(
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(214, 214, 214, 1.0),
                                width: 1,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14.0),
                                topRight: Radius.circular(14.0),
                                bottomLeft: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signupscreen(),
                                  ),
                                );
                              },
                              child: ErrorBoundary(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => signupscreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 360.0,
                                    height: 74.0,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ErrorBoundary(
                                          child: Container(
                                            child: Text(
                                              "Create a new account",
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19.0,
                                                color: Color.fromRGBO(
                                                  26,
                                                  28,
                                                  41,
                                                  1.0,
                                                ),
                                                decoration: TextDecoration.none,
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
                      ), //text login and sign
                      Positioned(
                        left: 138.0,
                        top: 647.0,
                        child: ErrorBoundary(
                          child: Container(
                            width: 156.0 + 2,
                            child: Text(
                              "Login or sign up",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 19.0,
                                color: Color.fromRGBO(26, 28, 41, 1.0),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ), //Frame 121075498
                      Positioned(
                        top: 743.0,
                        left: (constraints.maxWidth / 2) - (440.0 / 2 - 40.0),
                        child: ErrorBoundary(
                          child: Container(
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14.0),
                                topRight: Radius.circular(14.0),
                                bottomLeft: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                              color: Color.fromRGBO(0, 4, 2, 1.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => loginscreen(),
                                  ),
                                );
                              },
                              child: ErrorBoundary(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => loginscreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 360.0,
                                    height: 74.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ErrorBoundary(
                                          child: Container(
                                            child: Text(
                                              "Continue with Login",
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19.0,
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  1.0,
                                                ),
                                                decoration: TextDecoration.none,
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
                      ), //faad7b61-3ffb-4686-bd1a-56fa73bef7ab 1
                      Positioned(
                        top: 250.0,
                        left: (constraints.maxWidth / 2) - (440.0 / 2 - 6.0),
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
