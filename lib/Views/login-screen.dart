import 'package:demoapp/Views/main-Screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 14),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xff2B2B2B),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Let’s  start here',
              style: TextStyle(
                  color: Color(0xff2B2B2B),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.41),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Fill in your details to begin',
              style: TextStyle(
                  color: Color(0xff7A7A7A),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.41),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              // height: 71,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fullname',
                    style: TextStyle(
                        color: Color(0xffAEAEB2),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 26,
                    child: TextField(
                      style: const TextStyle(
                          color: Color(0xff2B2B2B),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41),
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            //email
            Container(
              height: 60,
              // height: 71,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'E-mail',
                    style: TextStyle(
                        color: Color(0xffAEAEB2),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 26,
                    child: TextField(
                      style: const TextStyle(
                          color: Color(0xff2B2B2B),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41),
                      controller: _mailController,
                      decoration: const InputDecoration(
                        labelText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),

            //pwd
            Container(
              height: 60,
              // height: 71,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                        color: Color(0xffAEAEB2),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 26,
                    child: TextField(
                      obscureText: _obscureText,
                      style: const TextStyle(
                          color: Color(0xff2B2B2B),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: '',
                        border: InputBorder.none,
                        suffixIconColor: Colors.grey,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          color: Colors.grey,
                          onPressed: _toggle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 15,
                ),
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
                    'Sign Up',
                    style: TextStyle(
                        color: Color(0xffF7F7F8),
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.41),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      /*  bottomNavigationBar: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: const TextSpan(
            // style:
            //     TextStyle(color: Colors.black, fontSize: 36),
            children: <TextSpan>[
              TextSpan(
                  // text: '\$${140}',
                  text: '140 AED',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w900)),
              TextSpan(
                  text: '/night',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      ),*/
      bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 23),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(),
              children: <TextSpan>[
                TextSpan(
                    text: 'By signing in, I agree with ',
                    style: TextStyle(
                        color: Color(0xff8E8E93),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41)),
                TextSpan(
                    text: ' Terms of Use\n',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41)),
                TextSpan(
                    text: ' and ',
                    style: TextStyle(
                        color: Color(0xffB0B0B0),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41)),
                TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(
                        color: Color(0xff2B2B2B),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41))
              ],
            ),
          )),
    );
  }
}
