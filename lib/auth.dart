import 'dart:io';

import 'package:flutter/material.dart';
import 'package:savee/home_page.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);
  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {


  Future<void> auth(BuildContext context) async {
    var url = Uri.https('2345-213-22-142-169.eu.ngrok.io', '/Utilizadores/auth');

    final prefs = await SharedPreferences.getInstance();
    var token = await prefs.getString('token');

    var response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token',
      'ngrok-skip-browser-warning': '90000',
    });
    if(response.statusCode == 200){
      print('ok');
      print(response.statusCode);
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Homepage(
          )));
    }else{
      print('nao');
      print(response.statusCode);
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Login(
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    auth(context);
    return Container(
    );
  }
  }
