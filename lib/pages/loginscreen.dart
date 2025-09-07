import '../pages/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

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
                      //Content
                      Positioned(
                        left: (constraints.maxWidth / 2) - (440.0 / 2 - 8.0),
                        top: (constraints.maxHeight / 2) - (956.0 / 2 - 215.5),
                        child: ErrorBoundary(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: ErrorBoundary(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                width: 425.0,
                                height: 531.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ErrorBoundary(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: ErrorBoundary(
                                          child: Container(
                                            height: 47.0,
                                            width: 240.0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ErrorBoundary(
                                                  child: Container(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        "Login your account",
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: Color.fromRGBO(
                                                            0,
                                                            0,
                                                            0,
                                                            1.0,
                                                          ),
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 2.0),
                                                ErrorBoundary(
                                                  child: Container(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        "Enter your email to login for this app",
                                                        style:
                                                            GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromRGBO(
                                                            0,
                                                            0,
                                                            0,
                                                            1.0,
                                                          ),
                                                          fontSize: 13.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
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
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: ErrorBoundary(
                                          child: Container(
                                            width: 375.0,
                                            height: 56.0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ErrorBoundary(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          8.0,
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          8.0,
                                                        ),
                                                        bottomLeft:
                                                            Radius.circular(
                                                          8.0,
                                                        ),
                                                        bottomRight:
                                                            Radius.circular(
                                                          8.0,
                                                        ),
                                                      ),
                                                      border: Border.all(
                                                        color: Color.fromRGBO(
                                                          223,
                                                          223,
                                                          223,
                                                          1.0,
                                                        ),
                                                        width: 1,
                                                        style:
                                                            BorderStyle.solid,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignInside,
                                                      ),
                                                      color: Color.fromRGBO(
                                                        255,
                                                        255,
                                                        255,
                                                        1.0,
                                                      ),
                                                    ),
                                                    clipBehavior: Clip.none,
                                                    child: ErrorBoundary(
                                                      child: Container(
                                                        width: 376.0,
                                                        height: 56.0,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          vertical: 8.0,
                                                          horizontal: 16.0,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  ErrorBoundary(
                                                                child:
                                                                    Container(
                                                                  child: Text(
                                                                    "email@domain.com",
                                                                    maxLines: 1,
                                                                    style: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Color
                                                                          .fromRGBO(
                                                                        130,
                                                                        130,
                                                                        130,
                                                                        1.0,
                                                                      ),
                                                                      fontSize:
                                                                          13.0,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .none,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: //Group 30
                                          SizedBox(
                                        width: 377.0,
                                        height: 116.0,
                                        child: LayoutBuilder(
                                          builder: (BuildContext context,
                                                  constraints) =>
                                              Stack(
                                            children: [
                                              //Password
                                              Positioned(
                                                left: 0.0,
                                                top: 0.0,
                                                child: ErrorBoundary(
                                                  child: Container(
                                                    width: 73.0 + 10,
                                                    child: Text(
                                                      "Password",
                                                      style: GoogleFonts.inter(
                                                        color: Color.fromRGBO(
                                                          42,
                                                          42,
                                                          42,
                                                          1.0,
                                                        ),
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing:
                                                            (-0.500000 / 100) *
                                                                14,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ), //Forgot password?
                                              Positioned(
                                                left: 245.0,
                                                top: 96.0,
                                                child: ErrorBoundary(
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: 132.0 + 10,
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Text(
                                                          "Forgot password?",
                                                          style:
                                                              GoogleFonts.inter(
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing:
                                                                (-0.500000 /
                                                                        100) *
                                                                    14,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color:
                                                                Color.fromRGBO(
                                                              100,
                                                              141,
                                                              219,
                                                              1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ), //Rectangle 14
                                              Positioned(
                                                top: 28.0,
                                                left:
                                                    (constraints.maxWidth / 2) -
                                                        (377.0 / 2 - 1.0),
                                                child: ErrorBoundary(
                                                  child: Container(
                                                    width: 376.0,
                                                    height: 56.0,
                                                    clipBehavior: Clip.none,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          12.0,
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          12.0,
                                                        ),
                                                        bottomLeft:
                                                            Radius.circular(
                                                          12.0,
                                                        ),
                                                        bottomRight:
                                                            Radius.circular(
                                                          12.0,
                                                        ),
                                                      ),
                                                      border: Border.all(
                                                        color: Color.fromRGBO(
                                                          236,
                                                          103,
                                                          103,
                                                          1.0,
                                                        ),
                                                        width: 2,
                                                        style:
                                                            BorderStyle.solid,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignInside,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ), //fi-rr-eye-crossed
                                              Positioned(
                                                left: 329.0,
                                                top: 46.0,
                                                child: ErrorBoundary(
                                                  child: ErrorBoundary(
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                    ),
                                                  ),
                                                ),
                                              ), //Group 3
                                              Positioned(
                                                left: 46.0,
                                                top: 204.0,
                                                child: ErrorBoundary(
                                                  child: SvgPicture.asset(
                                                    "assets/images/group_3_1.svg",
                                                    width: 116.0,
                                                    height: 6.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                            bottomLeft: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0),
                                          ),
                                          color: Color.fromRGBO(0, 0, 0, 1.0),
                                        ),
                                        clipBehavior: Clip.none,
                                        child: InkWell(
                                          onTap: () {},
                                          child: ErrorBoundary(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                width: 376.0,
                                                height: 56.0,
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
                                                        child: Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Continue",
                                                            style: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 13.0,
                                                              color: Color
                                                                  .fromRGBO(
                                                                255,
                                                                255,
                                                                255,
                                                                1.0,
                                                              ),
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
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
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: ErrorBoundary(
                                          child: Container(
                                            width: 327.0,
                                            height: 20.0,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: ErrorBoundary(
                                                    child: Expanded(
                                                      child: Container(
                                                        height: 1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Color.fromRGBO(
                                                            230,
                                                            230,
                                                            230,
                                                            1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.0),
                                                ErrorBoundary(
                                                  child: Container(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        "or",
                                                        style:
                                                            GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromRGBO(
                                                            130,
                                                            130,
                                                            130,
                                                            1.0,
                                                          ),
                                                          fontSize: 13.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.0),
                                                Expanded(
                                                  child: ErrorBoundary(
                                                    child: Expanded(
                                                      child: Container(
                                                        height: 1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Color.fromRGBO(
                                                            230,
                                                            230,
                                                            230,
                                                            1.0,
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
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: Container(
                                        clipBehavior: Clip.none,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromRGBO(0, 0, 0, 1.0),
                                            width: 1,
                                            style: BorderStyle.solid,
                                            strokeAlign:
                                                BorderSide.strokeAlignInside,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(14.0),
                                            topRight: Radius.circular(14.0),
                                            bottomLeft: Radius.circular(14.0),
                                            bottomRight: Radius.circular(14.0),
                                          ),
                                          color: Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    signupscreen(),
                                              ),
                                            );
                                          },
                                          child: ErrorBoundary(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        signupscreen(),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: 376.0,
                                                height: 56.0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ErrorBoundary(
                                                      child: Container(
                                                        child: Text(
                                                          "Continue with Sign up",
                                                          style:
                                                              GoogleFonts.inter(
                                                            color:
                                                                Color.fromRGBO(
                                                              0,
                                                              0,
                                                              0,
                                                              1.0,
                                                            ),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13.0,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
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
                                    SizedBox(height: 24.0),
                                    ErrorBoundary(
                                      child: LayoutBuilder(
                                        builder: (
                                          BuildContext context,
                                          constraints,
                                        ) =>
                                            Container(
                                          width: constraints.maxWidth,
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: RichText(
                                              text: TextSpan(
                                                text:
                                                    "By clicking continue, you agree to our ",
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11.0,
                                                  color: Color.fromRGBO(
                                                    130,
                                                    130,
                                                    130,
                                                    1.0,
                                                  ),
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: "Terms of Service",
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.0,
                                                      color: Color.fromRGBO(
                                                        0,
                                                        0,
                                                        0,
                                                        1.0,
                                                      ),
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: " and ",
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.0,
                                                      color: Color.fromRGBO(
                                                        130,
                                                        130,
                                                        130,
                                                        1.0,
                                                      ),
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "Privacy Policy",
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.0,
                                                      color: Color.fromRGBO(
                                                        0,
                                                        0,
                                                        0,
                                                        1.0,
                                                      ),
                                                      decoration:
                                                          TextDecoration.none,
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
