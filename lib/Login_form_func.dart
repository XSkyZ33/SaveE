import 'package:flutter/material.dart';
import 'package:savee/config/Pallete.dart';
import 'package:savee/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'components/my_textfield.dart';
import 'home_page_func.dart';

class Login_form_func extends StatefulWidget {
  Login_form_func({Key? key}) : super(key: key);

  @override
  State<Login_form_func> createState() => _Login_form_func_State();
}

class _Login_form_func_State extends State<Login_form_func> {


  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  Future<void> signUserInFunc() async {
    var url = Uri.https('393c-213-22-142-169.eu.ngrok.io', '/Utilizadores/funcionarios//auth');

    var res = await http.post(url, headers: {
      'ngrok-skip-browser-warning': '90000',
    },
        body: {
          "email" : emailController.text,
          "password" : passwordController.text,
        });

    if(res.statusCode == 200){
      var token = res.body;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
      var CheckToken = await prefs.getString('token');
      print(CheckToken);
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomepageFunc(
          )));
    }else{
      print(res.statusCode);
      print(res.body);
      print(emailController.text);
      print(passwordController.text);
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login funcionario'),
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
                      'assets/logo_white.png',
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
            SizedBox(height: 50),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: signUserInFunc,
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
