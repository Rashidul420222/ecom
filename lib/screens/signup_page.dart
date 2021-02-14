import 'package:flutter/material.dart';
import '../constants.dart';
import 'products_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'singUpPage';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _username, _password, _confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4C4C4),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 170,
                child: Center(
                    child: const Text(
                  "Sign Up",
                  style: kTextStyle,
                )),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (val) => _username = val,
                      validator: (val) =>
                          val.length < 6 ? 'Username too short' : null,
                      cursorColor: kTextColor,
                      style: TextStyle(color: kTextColor),
                      decoration: kTextFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.person, color: kTextColor),
                          hintText: 'Username'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (val) => _password = val,
                      validator: (val) =>
                          val.length < 6 ? 'Password too short ' : null,
                      obscureText: true,
                      cursorColor: kTextColor,
                      style: TextStyle(color: kTextColor),
                      decoration: kTextFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.lock, color: kTextColor),
                          hintText: 'Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (val) => _confirmPassword = val,
                      validator: (val) => val.length < 6
                          ? 'Please Enter Correct Confirm password'
                          : null,
                      obscureText: true,
                      cursorColor: kTextColor,
                      style: TextStyle(color: kTextColor),
                      decoration: kTextFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.lock, color: kTextColor),
                          hintText: 'Confirm Password'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState.validate();
                    Navigator.pushNamed(context, ProductPage.id);

                    print(
                        "Username : $_username, Password : $_password, Confirm Password : $_confirmPassword");
                  },
                  child: Text('SIGN UP'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                child: Center(
                    child: const Text(
                  'Having An Account? Sign In',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
