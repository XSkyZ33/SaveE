import 'dart:ui';

import 'package:flutter/material.dart';
import 'config/Pallete.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/Image5.png"
              ),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 404,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                    width: 375,
                    height: 300,
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
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
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              width: MediaQuery.of(context).size.width,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Pallette.kToDark,
                              ),
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
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 44,
                            decoration: BoxDecoration(
                                color: const Color(0x7fdddddd),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Center(
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff000000),
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Não se lembra da sua conta? ',
                                ),
                                TextSpan(
                                    text: 'Clique aqui',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                      color: Color(0xff000000),
                                    )),
                              ]),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 326),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Ao Continuar, você concorda com os ',
                                ),
                                TextSpan(
                                    text: 'Termos de Serviço',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      height: 1.7272727273,
                                      color: Color(0xff000000),
                                    )),
                                TextSpan(
                                  text: 'e confirma que leu a nossa ',
                                ),
                                TextSpan(
                                  text: 'Política de Privacidade',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    height: 1.7272727273,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '.\n',
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
