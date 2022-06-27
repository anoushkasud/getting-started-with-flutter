import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                height: 300,
                width: 200,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    // color: Colors.white,
                    //   backgroundColor: Colors.deepPurple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changeButton ? 50 : 150,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8)),
                ),
              )
              // ElevatedButton(
              //   style: TextButton.styleFrom(
              //     shadowColor: Colors.black,
              //     minimumSize: Size(100, 40),
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     print("hi!");
              //   },
              //   child: Text(
              //     "Login",
              //     textScaleFactor: 1.2,
              //   ),
              // )
            ],
          ),
        ));
  }
}

// Center(
//         child: Text(
//           "Login Page",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.blue,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),