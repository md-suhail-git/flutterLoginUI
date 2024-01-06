import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      backgroundColor: Colors.brown[100],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('lib/images/tuteelogo.png', fit: BoxFit.contain),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                  Text(
                    ' SIGN UP',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.brown[50],
                    child: const Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.accessibility,
                            color: Colors.brown,
                          ),
                        ),
                        Text(
                          ' E M A I L',
                          style: TextStyle(color: Colors.brown, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.brown[50],
                    child: const Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.lock,
                            color: Colors.brown,
                          ),
                        ),
                        Text(' P A S S W O R D',
                            style: TextStyle(
                                color: Colors.brown, fontSize: 20))
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.brown, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.brown,
                    child: const Center(
                      child: Text('S I G N  I N',
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: SignInButton(
                          Buttons.AppleDark,
                          text: "Sign in",
                          onPressed: () {
                            // Implement your sign-in logic here
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: SignInButton(
                          Buttons.Google,
                          text: "Sign in",
                          onPressed: () {
                            // Implement your sign-in logic here
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: SignInButton(
                          Buttons.Facebook,
                          text: "Sign in",
                          onPressed: () {
                            // Implement your sign-in logic here
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
