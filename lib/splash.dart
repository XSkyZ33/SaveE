import 'package:flutter/material.dart';
import 'package:savee/auth.dart';

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
            width: 397,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(children: [
              Positioned(
                left: 34.9999961853,
                top: 44.2222290039,
                child: Align(
                  child: SizedBox(
                    width: 304.58,
                    height: 304.58,
                    child: Image.asset(
                      'assets/Splash.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: 348,
                    height: 343,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(88),
                      child: Image.asset(
                        'assets/bulb.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
