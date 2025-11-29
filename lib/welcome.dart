import 'package:flutter/material.dart';
import 'package:registration_app_flutter_firebase/login.dart';
import 'package:registration_app_flutter_firebase/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Image.asset("assets/Data_security_01.jpg", width: 300, height: 400),
            SizedBox(
              width: 300,height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blueAccent,
                  side: BorderSide(color: Colors.black, width: 1),
                ),
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));},
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueAccent,
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));},
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
