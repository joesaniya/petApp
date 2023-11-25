import 'package:demoapp/Views/widgets/hotel-detail.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool extendDetails = true;
  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      // backgroundColor: const Color(0xffFBFBFB),
      backgroundColor: Colors.red,
      body: ListView(
        children: const [ImageWidget()],
      ),
    );*/
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
        height: 56,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xffA1A1A1),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffFE904B),
                Color(0xffFB724C),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: const Center(
          child: Text(
            'Check schedule',
            style: TextStyle(
                color: Color(0xffF7F7F8),
                fontSize: 17,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.41),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: const BoxDecoration(
            color: Color(0xfff8f8f8), //background color
          ),
          child: Stack(
            children: [
              buildImage(
                  // hotel,
                  size,
                  // defaultColor,
                  // secondColor,
                  Colors.black,
                  Colors.green),
              SizedBox(
                height: double.infinity,
                child: buildHotelDetails(
                  Colors.black,
                  Colors.white,
                  extendDetails,
                  size,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //
  Widget buildImage(Size size, Color defaultColor, Color secondColor) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        InkWell(
          onTap: () => setState(() {
            extendDetails = !extendDetails;
          }),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              // hotel['img'],
              "https://images.unsplash.com/photo-1530700131180-d43d9b8cc41f?q=80&w=2034&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
              // height: size.height * 0.35,
              height: size.height * 0.55,
              width: size.width,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Container(
                  // height: size.height * 0.35,
                  height: size.height * 0.55,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: defaultColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.7,
                    // height: size.height * 0.3,
                    height: size.height * 0.55,
                    child: Align(
                      child: CircularProgressIndicator(
                        color: defaultColor,
                      ),
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: size.height * 0.35,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: defaultColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 0.3,
                    child: Align(
                      child: CircularProgressIndicator(
                        color: defaultColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          // top: 24,
          top: 54,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 16),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                      color: Color(0x66B0B0B0),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      // MdiIcons.chevronLeft,
                      Icons.cancel,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 101,
                    height: 44,
                    decoration: const BoxDecoration(
                        color: Color(0x66C4C4C4),
                        // color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Verified',
                          style: TextStyle(
                              color: Color(0xffF7F7F8),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.41),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        /*  Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: paddingTop,
              left: size.width * 0.05,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: defaultColor,
                ),
                child: Icon(
                  // UniconsLine.arrow_left,
                  Icons.arrow_back_ios_sharp,
                  color: secondColor,
                  size: size.height * 0.035,
                ),
              ),
            ),
          ),
        ),
      */
      ],
    );
  }
}
