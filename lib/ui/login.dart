import 'package:flutter/material.dart';
import 'package:login_page/custom/custom_color.dart';
import 'package:login_page/ui/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back,",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyColor.blackText),
                      ),
                      Text(
                        "Login to continue your journey",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: MyColor.grayPlaceholder),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset("assets/images/login.png"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            color: MyColor.blackText,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Input your email",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: MyColor.blackText,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Input your password",
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                        style: TextStyle(color: MyColor.blueText))),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                  child: SizedBox(
                    height: 48,
                    width: MediaQuery.of(context).size.width / 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColor.btnColor,
                        child: InkWell(
                          splashColor: Colors.purple,
                          onTap: () {},
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have account? ",
                      style: TextStyle(color: MyColor.grayPlaceholder),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              color: MyColor.blueText,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
