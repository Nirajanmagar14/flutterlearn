import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "User name cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password cannot ve empty";
                      } else if (value.length < 6) {
                        return "Password length should be at least 6";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton ? 79 : 8),
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  width: changeButton ? 79 : 150,
                  height: 50,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                  // decoration: BoxDecoration(
                  //   color: Colors.deepPurple,
                  //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  //   // borderRadius: BorderRadius.circular(changeButton ? 50:8),
                ),
              ),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, Myroutes.homeRoute);
            //     },
            //     child: Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: Size(120, 50)))
          ]),
        ),
      ),

      // child: Center(
      //   child: Text("Login Page"),
      // ),
    );
  }
}
