import 'package:flutter/material.dart';
import 'package:onbroading_app/common/background_image.dart';
import 'package:onbroading_app/common/custom_filled_button.dart';
import 'package:onbroading_app/common/link_button.dart';
import 'package:onbroading_app/common/text_input_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              const BackgroundImage(),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 51, right: 51),
                      child: Column(
                        children: [
                          Text(
                            "Create Account",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Create an account so you can explore all the existing jobs",
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 74, left: 31, right: 31),
                      child: Column(
                        children: [
                          TextInputField(
                              hint: 'Email',
                              controller: _emailController,
                              isSecure: false),
                          const SizedBox(
                            height: 26,
                          ),
                          TextInputField(
                              hint: 'Password',
                              controller: _passwordController,
                              isSecure: true),
                          const SizedBox(
                            height: 26,
                          ),
                          TextInputField(
                              hint: 'Confirm Password',
                              controller: _rePasswordController,
                              isSecure: true),
                          const SizedBox(
                            height: 53,
                          ),
                          SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width - 62,
                              child: CustomFilledButton(
                                  action: () {}, buttonLabel: 'Sign in')),
                          const SizedBox(
                            height: 40,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.popAndPushNamed(
                                  context,
                                  '/login',
                                );
                              },
                              child: Text("Already have an account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff494949))))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 65),
                      child: Column(
                        children: [
                          Text(
                            "Or continue with",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LinkButton(
                                  iconUrl: "assets/icons/google_icon.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              LinkButton(
                                  iconUrl: "assets/icons/facebook_icon.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              LinkButton(iconUrl: "assets/icons/apple_icon.svg")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
