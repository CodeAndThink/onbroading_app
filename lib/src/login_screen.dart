import 'package:flutter/material.dart';
import 'package:onbroading_app/common/background_image.dart';
import 'package:onbroading_app/common/custom_filled_button.dart';
import 'package:onbroading_app/common/link_button.dart';
import 'package:onbroading_app/common/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                            "Login here",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Text(
                            "Welcome back you’ve been missed!",
                            style: Theme.of(context).textTheme.headlineMedium,
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
                            height: 29,
                          ),
                          TextInputField(
                              hint: 'Password',
                              controller: _passwordController,
                              isSecure: true),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot your password?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width - 62,
                              child: CustomFilledButton(
                                  action: () {}, buttonLabel: 'Login')),
                          const SizedBox(
                            height: 40,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/register',
                                );
                              },
                              child: const Text(
                                "Create new account",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff494949)),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 65),
                      child: Column(
                        children: [
                          Text("Or continue with",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  )),
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
