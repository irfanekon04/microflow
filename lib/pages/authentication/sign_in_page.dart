import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();

  final passController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(color: Color(0xff088f60)),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );

      emailController.clear();
      passController.clear();
    } on FirebaseAuthException catch (e) {
      print(e.code);
      // if (e.code == 'invalid-email') {
      //   print("NO USER FOUND FOR THAT EMAIL!!");
      // } else if (e.code == 'wrong-password') {
      //   print('Wrong password provided for that user.');
      // }
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: .center,
                      children: [
                        Container(
                          padding: .all(10),
                          decoration: BoxDecoration(
                            borderRadius: .circular(18),
                            color: Color(0xff088f60),
                          ),
                          child: Icon(
                            Icons.trending_up_rounded,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'Microflow',
                              style: TextStyle(fontSize: 32, fontWeight: .w900),
                            ),
                            Text(
                              'Finance Management',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: .w600,
                                color: Color(0xff8c9292),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: .bold,
                      color: Color(0xff088f60),
                    ),
                  ),
                  Text(
                    'Sign in to manage your microfinance operations',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: .w400,
                      color: Color(0xff8c9292),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'E-mail Address',
                          style: TextStyle(fontSize: 16, fontWeight: .w600),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          keyboardType: .emailAddress,
                          controller: emailController,
                          cursorColor: Colors.grey.shade800,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            hintText: 'you@email.com',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: .circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xff088f60),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Password',
                          style: TextStyle(fontSize: 16, fontWeight: .w600),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          obscureText: true,
                          keyboardType: .visiblePassword,
                          controller: passController,
                          cursorColor: Colors.grey.shade800,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            hintText: 'Enter your password',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xff088f60),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: .end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: Color(0xff088f60),
                                  fontSize: 14,
                                  fontWeight: .w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: .infinity,
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xff088f60),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: signUserIn,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: .bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text('Don\'t have an account? '),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: .w600,
                            color: Color(0xff088f60),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
