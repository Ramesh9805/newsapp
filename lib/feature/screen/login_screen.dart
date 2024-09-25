// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:newsapp/feature/screen/news_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome to News App',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    // ignore: avoid_print
                    print(value);
                    if (value!.isEmpty) {
                      return 'Enter cant be empty Email';
                    } else if (!value.contains('@')) {
                      return 'Enter @ Email';
                    } else if (value.length < 5) {
                      return 'Email is too short';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Username or Email',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    var CapitalCase = RegExp(r'^(?=.*[A-Z])');
                    if (value!.isEmpty) {
                      return 'Password is required';
                    } else if (!CapitalCase.hasMatch(value)) {
                      return 'Password must contain Capital Case';
                    } else if (value.length < 6) {
                      return 'Password is too short';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.black87,
                        activeColor: Colors.white,
                        side: BorderSide(color: Colors.black87),
                        value: true,
                        onChanged: (bool? value) {
                          setState(() {
                            value = true;
                          });
                        }),
                    TextButton(
                      onPressed: () {},
                      child: Text('Remember me',
                          style: TextStyle(color: Colors.black87)),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                      await Future.delayed(const Duration(seconds: 2));
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => NewsScreen(title: "News"),
                      ));
                    }
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black87,
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black87,
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 128, 170, 243)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign-in with Google',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    )
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
