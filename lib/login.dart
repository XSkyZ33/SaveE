import 'package:flutter/material.dart';
import 'config/Pallete.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/Logo.png",
                ),
                radius: 66,
              ),
              const SizedBox(height: 13),
              const Text(
                "We Welcome You To",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Text(
                "SaveE",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Container(
                      color: Pallette.kToDark,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 44,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Admin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
