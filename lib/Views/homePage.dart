import 'package:flutter/material.dart';

import 'detail-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.41),
                        ),
                        Text(
                          'Explore dog walkers',
                          style: TextStyle(
                              color: Color(0xffB0B0B0),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.41),
                        )
                      ],
                    ),
                    Container(
                      width: 104,
                      height: 41,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFE904B),
                            Color(0xffFB724C),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Book a walk',
                            style: TextStyle(
                                color: Color(0xffFCFCFC),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.41),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 43.5,
              margin: const EdgeInsets.only(right: 16),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Color(0xffA1A1A1),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Kiyv, Ukraine',
                            style: TextStyle(
                                color: Color(0xffA1A1A1),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.41),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.filter_list,
                    color: Color(0xffA1A1A1),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Near you',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.41),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        letterSpacing: -0.41),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            nearYou(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Divider(
                color: Color(0xffA1A1A1),
              ),
            ),
            //suggested
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Suggested',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.41),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        letterSpacing: -0.41),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            suggested()
          ],
        ),
      ),
    );
  }

  Widget nearYou() {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Container(
              height: 176,
              width: 180,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // border: Border.all(color: Colors.grey.shade300, width: 1)
              ),
              child: Column(
                children: [
                  /*  SizedBox(
                      // margin: const EdgeInsets.all(8),
                      height: 125,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/dog-walk.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),*/
                  Stack(
                    children: [
                      /* Hero(
                      tag: "image",
                      child: Image(
                        image: AssetImage(product.image),
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),*/
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/dog-walk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          width: 49,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0x33E5E5EA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                '4.1',
                                style: TextStyle(
                                    color: Color(0xffFFCB55),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.41),
                              ),
                              Icon(
                                Icons.star,

                                color: Color(0xffFFCB55),
                                /*   product.favorite
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_outline_rounded,*/
                                size: 10,
                                // color: theme.colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mason York',
                              style: TextStyle(
                                  color: Color(0xff2B2B2B),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xffA1A1A1),
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '7 km from you',
                                  style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41),
                                ),
                              ],
                            )
                          ],
                        )),
                        Container(
                          width: 48,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0xff2B2B2B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Center(
                            child: Text(
                              '\$3/h',
                              style: TextStyle(
                                  color: Color(0xffFBFBFB),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget suggested() {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Container(
              height: 176,
              width: 180,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // border: Border.all(color: Colors.grey.shade300, width: 1)
              ),
              child: Column(
                children: [
                  /*  SizedBox(
                      // margin: const EdgeInsets.all(8),
                      height: 125,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/dog-walk.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),*/
                  Stack(
                    children: [
                      /* Hero(
                      tag: "image",
                      child: Image(
                        image: AssetImage(product.image),
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),*/
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/dog-walk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          width: 49,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0x33E5E5EA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                '4.1',
                                style: TextStyle(
                                    color: Color(0xffFFCB55),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.41),
                              ),
                              Icon(
                                Icons.star,

                                color: Color(0xffFFCB55),
                                /*   product.favorite
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_outline_rounded,*/
                                size: 10,
                                // color: theme.colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mason York',
                              style: TextStyle(
                                  color: Color(0xff2B2B2B),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xffA1A1A1),
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '7 km from you',
                                  style: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41),
                                ),
                              ],
                            )
                          ],
                        )),
                        Container(
                          width: 48,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0xff2B2B2B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Center(
                            child: Text(
                              '\$3/h',
                              style: TextStyle(
                                  color: Color(0xffFBFBFB),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
