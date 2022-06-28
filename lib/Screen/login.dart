import 'package:flutter/material.dart';

import '../Utils/constant.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bgimage.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Loan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Text(
                      "Welcome,Please Login ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "+92306****703",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kprimayColor,
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height * 0.50,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // TextField
                                TextField(
                                  // controller: text,
                                  keyboardType: TextInputType.name,
                                  cursorColor: primayColor,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 15.0),
                                      fillColor: Colors.white,
                                      filled: true,
                                      errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      hintText: "enter password",
                                      hintStyle: TextStyle(
                                          color: Colors.black38, fontSize: 16),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: primayColor,
                                      ),
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          })),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "forget password?",
                                      style: TextStyle(
                                          color: primayColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),

                                // Botton
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.10,
                                ),
                                Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width *
                                          0.70,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          gradient: LinearGradient(colors: [
                                            primayColor,
                                            primayColor,
                                            primayColor,
                                            // Colors.white,
                                          ]),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              color: primayColor,
                                              blurRadius: 1.0,
                                            ),
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              color: primayColor,
                                              blurRadius: 1.0,
                                            ),
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              color: primayColor,
                                              blurRadius: 1.0,
                                            ),
                                          ]),
                                      child: Text("login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18.0))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
