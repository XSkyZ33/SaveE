import 'package:flutter/material.dart';
import 'my_button.dart';


class DialogBoxSend extends StatelessWidget {

  DialogBoxSend({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 328,
        child: Center(
          child: Column(
            children:  [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RichText(
                  text:
                  const TextSpan(
                    style:  TextStyle(
                      fontSize:  25,
                      fontWeight:  FontWeight.w700,
                      height:  1.2569999695,
                      color:  Color(0xff000000),
                    ),
                    children:  [
                      TextSpan(
                        text:  'Mensagem ',
                        style:  TextStyle (
                          fontSize:  25,
                          fontWeight:  FontWeight.w700,
                          height:  1.2575,
                          color:  Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text:  'enviada',
                        style:  TextStyle (

                          fontSize:  25,
                          fontWeight:  FontWeight.w700,
                          height:  1.2575,
                          color:  Color(0xffff0000),
                        ),
                      ),
                      TextSpan(
                        text:  '.',
                        style:  TextStyle (
                          fontSize:  25,
                          fontWeight:  FontWeight.w700,
                          height:  1.2575,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 40),
                  Center(
                    child: SizedBox(
                      width: 68,
                      height: 68,
                      child: Image.asset(
                        'assets/send.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              const Positioned(
                left:  101.5,
                top:  335,
                child:
                Align(
                  child:
                  SizedBox(
                    width:  173,
                    height:  57,
                    child:
                    Text(
                      'Um funcionário irá resolver o problema com a maior brevidade possivel',
                      textAlign:  TextAlign.center,
                      style:  TextStyle (
                        fontSize:  15,
                        fontWeight:  FontWeight.w400,
                        height:  1.2575,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
