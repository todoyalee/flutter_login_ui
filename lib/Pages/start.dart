import 'package:flutter/material.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.grey[500],
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TweenAnimationBuilder(
              duration: Duration(microseconds: 5000),
              builder: (BuildContext context, double _value, child) {
                return Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                );
              },
              tween: Tween<double>(begin: 0, end: 1),
              child: Text(
                "hard work always pays off",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/her.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          TweenAnimationBuilder(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(microseconds: 50000),
              builder: (BuildContext context, double _value, child) {
                return Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: child,
                  ),
                );
              })
        ],
      ),
    )));
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
