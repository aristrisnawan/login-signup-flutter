import 'package:flutter/material.dart';
import 'package:login_page/custom/custom_color.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
              Text(
                "Create Your Account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColor.blackText),
              ),
              Text(
                "Create your account to start journey",
                style: TextStyle(
                    color: MyColor.grayPlaceholder,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: Image.asset("assets/images/2.png"),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                          color: MyColor.blackText,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Full name",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Last name",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                          hintText: "Input your email",
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width / 1,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColor.btnColor,
                      child: InkWell(
                        splashColor: Colors.purple,
                        onTap: () {},
                        child: Center(
                            child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                    "already have an account?",
                    style: TextStyle(color: MyColor.grayPlaceholder),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      " Sign In",
                      style: TextStyle(color: MyColor.blueText),
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
