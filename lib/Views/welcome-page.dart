import 'dart:convert';
import 'dart:developer';

import 'package:demoapp/Views/login-screen.dart';
import 'package:demoapp/Views/main-Screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Map<String, dynamic>? data;
  String? img;
  @override
  void initState() {
    super.initState();
    fetchData();
    /*  img = data!['message'];
    log('img:$img');*/
    img = data == null
        ? 'https://images.dog.ceo/breeds/poodle-miniature/n02113712_163.jpg'
        : data!['message'];
    log('img:$img');
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
        log('Data:$data');
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    // log('img:${data == null ? const Text('n') : data!["message"]}');
    return Scaffold(
      body:
          /*  data == null
          ? const Center(child: CircularProgressIndicator())
          : */
          Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        // img.toString()
                        'https://images.dog.ceo/breeds/poodle-miniature/n02113712_163.jpg'),
                    // fit: BoxFit.fill
                    // image: AssetImage('assets/images/dog-walk.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              const Color(0xff161d27).withOpacity(0.9),
              const Color(0xff161d27),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Positioned(
            top: 45,
            left: 16,
            child: Container(
              height: 40,
              width: 101,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/LOGO.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Too tired to walk your dog?",
                    style: TextStyle(
                        color: Color(0xffFCFCFC),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Let’s help you!",
                    style: TextStyle(
                        color: Color(0xffFCFCFC),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
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
                        'Join our community',
                        style: TextStyle(
                            color: Color(0xffF7F7F8),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.41),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Already a member?",
                      style: TextStyle(
                          color: Color(0xffFCFCFC),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Color(0xffFB724C),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.41),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
