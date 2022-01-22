import 'dart:ffi';

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    Widget buildEmail() => Padding(
          padding: EdgeInsets.all(32.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'name@example.com',
              labelText: "Email",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                ),
              // prefixIcon: Icon(Icons.mail),
              suffixIcon: emailController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      onPressed: () => emailController.clear(),
                      icon: Icon(Icons.close),
                    ),
              focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(100),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(100),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
          ),
        );

    Widget buildPassword() => Padding(
        padding: EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 10.0),
        child: TextField(
          onChanged: (value) => setState(() => this.password = value),
          onSubmitted: (value) => setState(() => this.password = value),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Your Password...',
            labelText: 'Password',
            labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                ),
            // errorText: 'Password is wrong',
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(100),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(100),
            ),
          ),
          obscureText: isPasswordVisible,
        ));

    Widget buildSubmit() => Padding(
        padding: EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 10.0),
        child: SizedBox(
          width: 323, // <-- Your width
          height: 56,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          // side: BorderSide(color: Colors.red)
                          ))),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                print('Email: ${emailController.text}');
                print('Password: ${password}');
              }),
        ));

    return Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 125, vertical: 50),
              child: Text(
                "Log In",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  // color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
              child: Text(
                "Welcome back you’ve been missed!",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  // color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                ),
              ),
            ),
            buildEmail(),
            buildPassword(),
            buildSubmit(),
          ],
        ));
  }
}
