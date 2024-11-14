import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onbroading_app/static_values/values.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
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
              margin: const EdgeInsets.only(top: 74, left: 31, right: 31),
              child: Column(
                children: [
                  _textInputBox("Email", _emailController),
                  const SizedBox(
                    height: 26,
                  ),
                  _textInputBox("Password", _passwordController),
                  const SizedBox(
                    height: 26,
                  ),
                  _textInputBox("Confirm Password", _passwordController),
                  const SizedBox(
                    height: 53,
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
                        "Sign up",
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
                        Navigator.pop(context);
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
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
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
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          filled: true,
          fillColor: Values.baseTextInputBackgroundColor,
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: const TextStyle(color: Values.baseHintTextColor),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      controller: controller,
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
