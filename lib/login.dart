import 'dart:ui';

import 'package:flutter/material.dart';
import 'Login_form.dart';
import 'Login_form_func.dart';
import 'config/Pallete.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/Image5.png"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Colors.white.withOpacity(0.5),
                      Colors.white,
                    ],
                        stops: const [
                      0.0,
                      0.3,
                      0.5,
                    ])),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 40, 5, 0),
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Pallette.kToDark,
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipOval(
                            child: Image.asset("assets/logo_white.png"),
                          ),
                        ),
                      ),
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
                      padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_form_func()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Pallette.kToDark,
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Funcionario",
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_form()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
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
    );
  }
}
