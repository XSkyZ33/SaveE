import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:savee/config/Pallete.dart';
import 'package:savee/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'components/my_textfield.dart';

class Login_form extends StatefulWidget {
  Login_form({Key? key}) : super(key: key);

  @override
  State<Login_form> createState() => _Login_formState();
}

class _Login_formState extends State<Login_form> {


  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signUserIn() async {
    var url = Uri.https('127.0.0.1:1880', '/Utilizadores/auth');

    var res = await http.post(url, headers: {
    'ngrok-skip-browser-warning': '90000',
    },
    body: jsonEncode(<String, String>{
    'email' : emailController.text,
    "password" : passwordController.text,
    }));

    if(res.statusCode == 200){
      var token = res.body;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
      var CheckToken = await prefs.getString('token');
      print(CheckToken);
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Homepage(
          )));
    }else{
      print(res.statusCode);
      print(emailController.text);
      print(passwordController.text);
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.lightGreen,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/Logo.png',
                      width: 55,
                      height: 55,
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.lightGreen, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () => {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Homepage(
                )))
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
