import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
              "Welcome",
              style: TextStyle(
                  // color: Colors.white,
                  //   backgroundColor: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
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
              height: 20.0,
            ),

            ElevatedButton(
              style: TextButton.styleFrom(),  
              onPressed: () {
                print("hi!");
                },
              child: Text("Login"),
              )
          ],
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