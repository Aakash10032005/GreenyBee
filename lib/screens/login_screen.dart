import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';

import 'home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginpagecolour,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontFamily: 'PlayWright',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: titletextcolour,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/applogo.png'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(
                        color: boxbordercolour,
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email/Phone Number'),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: textfieldcolour,
                      border: Border.all(
                        color: boxbordercolour,
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    _navigateToHomeScreen(context);
                  },
                  child: Container(
                    height: 50.0,
                    width: 260.0,
                    decoration: BoxDecoration(
                      color: primaryforegroundcolour,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: fullwhitetextcolour,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: fullwhitetextcolour,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: titletextcolour,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
