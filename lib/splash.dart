import 'package:flutter/material.dart';
import 'package:savee/auth.dart';
import 'package:savee/config/Pallete.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Auth(
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Color(0xff8CDC86),
              image: DecorationImage(
                image: AssetImage('assets/Splash.png'),
                fit: BoxFit.fitWidth
              )
            ),
          ),
        ],
      ),
    );
  }
}
