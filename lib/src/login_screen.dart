import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbroading_app/src/register_screen.dart';
import 'package:onbroading_app/static_values/values.dart';

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
      body: Center(
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 74, left: 31, right: 31),
              child: Column(
                children: [
                  _textInputBox("Email", _emailController),
                  const SizedBox(
                    height: 29,
                  ),
                  _textInputBox("Password", _passwordController),
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
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 62,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shadowColor: const WidgetStatePropertyAll(
                              Values.baseShadowColor),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.primary)),
                      child: Text(
                        "Sign in",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.surface),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
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
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _linkButton("assets/icons/google_icon.svg"),
                      const SizedBox(
                        width: 10,
                      ),
                      _linkButton("assets/icons/facebook_icon.svg"),
                      const SizedBox(
                        width: 10,
                      ),
                      _linkButton("assets/icons/apple_icon.svg")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInputBox(String hint, TextEditingController controller) {
    return SizedBox(
      height: 64,
      child: TextFormField(
        style: const TextStyle(fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: const TextStyle(color: Values.baseHintTextColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
        ),
        controller: controller,
      ),
    );
  }

  Widget _linkButton(String iconUrl) {
    return Container(
      height: 44,
      width: 60,
      decoration: BoxDecoration(
          color: Values.baseLinkButtonColor,
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(onPressed: () {}, icon: SvgPicture.asset(iconUrl)),
    );
  }
}
