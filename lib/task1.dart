import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool tristate = false;
  String substring = ".com";
  String substring1 = "@";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.greenAccent.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //greeting text
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Welcome",
                  style: GoogleFonts.secularOne(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  "Arpan Gautam",
                  style: GoogleFonts.secularOne(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent.shade700,
                  ),
                ),
              ),

              const SizedBox(
                height: 5.0,
              ),

              const SizedBox(
                height: 40.0,
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 300, bottom: 5),
                  child: Text('Email')),

              //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty || !value.contains(substring) || !value.contains(substring1)) {
                              return 'Enter Valid Email';
                            }
                            return null;
                          } // validator
                          ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 280, bottom: 5),
                  child: Text('Password')),

              //password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              //login button
              const SizedBox(height: 20.0),

              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                      value: this.tristate,
                      onChanged: (bool) {
                        setState(() {
                          this.tristate = true;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  child:
                      Text('Remember Me', style: TextStyle(color: Colors.red)),
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text('Forget Password',
                          style: TextStyle(color: Colors.red))),
                )
              ]),

              const SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.greenAccent.shade700,
                    ),
                    child: const Center(
                        child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    )),
                  ),
                  onTap: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context, '/second');
                    }
                  },
                ),
              ),
              //not a member? register now

              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don\'t have account?',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
