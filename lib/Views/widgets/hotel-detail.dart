import 'package:flutter/material.dart';

AnimatedPadding buildHotelDetails(BuildContext context, Color defaultColor,
    Color secondColor, bool extendDetails, Size size) {
  return AnimatedPadding(
    padding: EdgeInsets.only(
      // top: extendDetails ? size.height * 0.3 : size.height * 0.35,
      top: size.height * 0.5,
      // top: 400
    ),
    duration: const Duration(milliseconds: 300),
    child: Column(
      children: [
        Expanded(
          child: AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: Container(
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(
                  40,
                )),
              ),
              width: size.width,
              height: 500,
              // height: extendDetails ? size.height * 0.53 : size.height * 0.48,
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: size.width * 0.08,
                  right: size.width * 0.08,
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.transparent,
                                width: size.width * 0.65,
                                // width: double.infinity,
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Alex Murray',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.41),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      /*  Divider(
                        // color: defaultColor,
                        thickness: 0.5,
                        height: size.height * 0.02,
                        color: const Color(0xffA1A1A1),
                      ),*/

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    Text(
                                      '\$/hr',
                                      style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                  ],
                                ),
                              ),
                              /*  const VerticalDivider(
                                color: Colors.black,
                                thickness: 1,
                                indent: 2, //Spacing at the top of divider.
                                endIndent:
                                    2, //Spacing at the bottom of divider.
                              ),*/
                              Container(
                                height: 15,
                                width: 2,
                                color: const Color(0xffA1A1A1),
                              ),
                              //2
                              Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      '10',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'km',
                                      style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 2,
                                color: const Color(0xffA1A1A1),
                              ),
                              //
                              Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffA1A1A1),
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 2,
                                color: const Color(0xffA1A1A1),
                              ),
                              //4
                              Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      '450',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'walks',
                                      style: TextStyle(
                                          color: Color(0xffA1A1A1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        color: Color(0xffA1A1A1),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 99,
                              height: 44,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                color: Color(0xff2B2B2B),
                              ),
                              child: const Center(
                                child: Text(
                                  'About',
                                  style: TextStyle(
                                      color: Color(0xffF7F7F8),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.41),
                                ),
                              ),
                            ),
                            Container(
                              width: 99,
                              height: 44,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                color: Color(0xffF5F5F5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Color(0xffB0B0B0),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41),
                                ),
                              ),
                            ),
                            Container(
                              width: 99,
                              height: 44,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                color: Color(0xffF5F5F5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      color: Color(0xffB0B0B0),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                          color: Color(0xffB0B0B0),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '30 years',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                  ]),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Experiance',
                                      style: TextStyle(
                                          color: Color(0xffB0B0B0),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '11 months',
                                      style: TextStyle(
                                          color: Color(0xff2B2B2B),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.41),
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: double.infinity,
                        // width: size.width * 0.8,
                        // height: extendDetails
                        //     ? size.height * 0.4
                        //     : size.height * 0.35,

                        child: const Text(
                          "Alex has loved dogs since childhood. He is \n currently a veterinary student. Visits the \n dog shelter we...",
                          style: TextStyle(
                              color: Color(0xffB0B0B0),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.41),
                        ),
                      ),
                      const Text(
                        "Read more",
                        style: TextStyle(
                            color: Color(0xffFB724C),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.41),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        /* Divider(
          color: defaultColor,
          height: size.height * 0.01,
        ),*/
        // buildDetailsBottomBar(hotel, defaultColor, secondColor, size),
      ],
    ),
  );
}
