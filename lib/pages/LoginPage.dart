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
          padding: EdgeInsets.fromLTRB(32, 10, 32, 10),
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
                )),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(145, 199, 136, 50))),
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
            },
          ),
        ));

    Widget buildContinue() => Padding(
          padding: EdgeInsets.fromLTRB(32, 10, 32, 20),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "or continue with",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );

      Widget buildFacebook() => Padding(
        padding: EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 10.0),
        child: SizedBox(
          width: 323, // <-- Your width
          height: 56,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                )),
                backgroundColor: MaterialStateProperty.all(
                    Colors.blue[600])),
            child: Text(
              'Continue with Facebook',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
        ));

      Widget buildGoogle() => Padding(
        padding: EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 10.0),
        child: SizedBox(
          width: 323, // <-- Your width
          height: 56,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                )),
                backgroundColor: MaterialStateProperty.all(
                    Colors.red[600])),
            child: Text(
              'Continue with Google',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                // color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
        )); 

        Widget buildSignup() => Padding(
          padding: EdgeInsets.fromLTRB(32, 10, 32, 0),
          child: TextButton(
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onPressed: () {},
              ),
        );

    return Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(125, 75, 125,25),
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
              padding: EdgeInsets.fromLTRB(90, 0, 90, 20),
              child: Center(
                child: Text(
                  "Welcome back you’ve been missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    // color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            buildEmail(),
            buildPassword(),
            // SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.fromLTRB(199, 0, 32, 0),
              // child: Text("Forget Password?"),
              child: TextButton(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            buildSubmit(),
            buildContinue(),
            buildFacebook(),
            buildGoogle(),
            buildSignup(),
          ],
        ));
  }
}
