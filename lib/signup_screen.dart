import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Sign up",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Member?"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: "Email", hintText: "Email"),
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: "Password", hintText: "Password"),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text("or Signup with"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg?w=360",
                  width: 40,
                ),
                Image.network(
                  "https://static.vecteezy.com/system/resources/previews/022/484/503/original/google-lens-icon-logo-symbol-free-png.png",
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
