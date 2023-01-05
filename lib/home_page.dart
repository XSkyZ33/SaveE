import 'package:flutter/material.dart';
import 'config/Pallete.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xfffffcfa),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 40, 31, 15.56),
            width: double.infinity,
            height: 53.44,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 14, 186, 13.43),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 3, 0.01),
                          child: const Text(
                            'SaveE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              height: 1.2125,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 21,
                        height: 26.01,
                        child: Image.asset(
                          'assets/min_logo.png',
                          width: 21,
                          height: 26.01,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 54,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Align(
                          child: SizedBox(
                            width: 54,
                            height: 53.44,
                            child: Image.asset(
                              'assets/menu.png',
                              width: 54,
                              height: 53.44,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 9, 10.18),
            width: 397,
            height: 382.82,
            child: Stack(children: [
              Positioned(
                left: 34.9999961853,
                top: 44.2222290039,
                child: Align(
                  child: SizedBox(
                    width: 304.58,
                    height: 304.58,
                    child: Image.asset(
                      'assets/eclipse.png',
                      width: 304.58,
                      height: 304.58,
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
          Container(
            margin:  const EdgeInsets.fromLTRB(0, 0, 34, 0),
            width:  347,
            height:  145.05,
            child:
            Stack(
              children:  [
                Positioned(
                  left:  0,
                  top:  63,
                  child:
                  Align(
                    child:
                    SizedBox(
                      width:  82.05,
                      height:  82.05,
                      child:
                      Container(
                        decoration:  BoxDecoration (
                          borderRadius:  BorderRadius.circular(41.0235519409),
                          color:  const Color(0xff0092d0),
                          boxShadow:  const [
                            BoxShadow(
                              color:  Color(0x19040602),
                              offset:  Offset(0, 3.8942513466),
                              blurRadius:  16.0637874603,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left:  34,
                  top:  0,
                  child:
                  Container(
                    padding:  const EdgeInsets.fromLTRB(23, 15, 24, 13.67),
                    width:  307,
                    height:  90,
                    decoration:  BoxDecoration (
                      borderRadius:  BorderRadius.circular(17.5241317749),
                      gradient:  const RadialGradient (
                        center:  Alignment(0.963, 0.999),
                        radius:  1.34,
                        colors:  <Color>[Color(0xff4bbfef), Color(0xff4abeef)],
                        stops:  <double>[0, 1],
                      ),
                      boxShadow:  const [
                        BoxShadow(
                          color:  Color(0x474bbff0),
                          offset:  Offset(0, 18.4976940155),
                          blurRadius:  14.1166610718,
                        ),
                      ],
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      children:  [
                        Container(
                          margin:  const EdgeInsets.fromLTRB(0, 0, 11.67, 0),
                          padding:  const EdgeInsets.fromLTRB(15, 15, 15.33, 15.33),
                          height:  double.infinity,
                          decoration:  const BoxDecoration (
                            image:  DecorationImage (
                              fit:  BoxFit.cover,
                              image: AssetImage(
                                'assets/verde.png',
                              ),
                            ),
                          ),
                          child:
                          Center(
                            child:
                            SizedBox(
                              width:  31,
                              height:  31,
                              child:
                              Image.asset(
                                'assets/person.png',
                                width:  31,
                                height:  31,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.fromLTRB(0, 5, 0, 5.33),
                          height:  double.infinity,
                          child:
                          Column(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                margin:  const EdgeInsets.fromLTRB(0, 0, 0, 1),
                                child:
                                const Text(
                                  'Contactar Funcionário',
                                  textAlign:  TextAlign.center,
                                  style:  TextStyle (
                                    fontSize:  19,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2575,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                margin:  const EdgeInsets.fromLTRB(0, 0, 11, 0),
                                constraints:  const BoxConstraints (
                                  maxWidth:  151,
                                ),
                                child:
                                const Text(
                                  'contacte um funcionário em caso de necessitar de ajuda',
                                  textAlign:  TextAlign.center,
                                  style:  TextStyle (
                                    fontSize:  10,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2575,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
    );
  }
}
