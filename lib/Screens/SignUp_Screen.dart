import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:top_10/Helper/custom_funcations.dart';
import 'package:top_10/Screens/LoginScreen.dart';


class SignUp extends StatefulWidget {
  static const String screenRoute = 'SignUpScreen';

  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? email;
  String? password;
  var formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          backgroundColor: const Color.fromARGB(255, 23, 72, 233),
          title: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color.fromARGB(255, 246, 226, 54),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fiald is Required";
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                      prefix: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fiald is Required";
                      }
                    },
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefix: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fiald is Required";
                      }
                    },
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Password",
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      prefix: const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fiald is Required";
                      }
                    },
                    obscureText: _obscureText1,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Confirm Password",
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText1 = !_obscureText1;
                          });
                        },
                        icon: Icon(_obscureText1
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      prefix: const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          try {
                            await createAcount(
                                email: email!, password: password!);
                            Navigator.pushNamed(context, Login.screenRoute);

                            SnakShow(context, "Successfuly");
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              SnakShow(
                                  context, "The password provided is too weak");
                            } else if (e.code == 'email-already-in-use') {
                              SnakShow(context,
                                  "The account already exists for that email.");
                            }
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Aleady have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Login.screenRoute);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 233, 11, 11),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}
