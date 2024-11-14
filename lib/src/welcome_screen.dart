import 'package:flutter/material.dart';
import 'package:onbroading_app/src/login_screen.dart';
import 'package:onbroading_app/src/register_screen.dart';
import 'package:onbroading_app/static_values/values.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 22, left: 22),
            child: Image.asset(
              'assets/images/welcome_image.png',
              height: 385,
              width: 422,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 42, right: 42, top: 47, bottom: 88),
            child: Column(
              children: [
                Text(
                  "Discover Your Dream Job here",
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 23,
                ),
                Text(
                  "Explore all the existing job roles based on your interest and study major",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 88, left: 39, right: 39),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ButtonStyle(
                        shadowColor: const WidgetStatePropertyAll(
                            Values.baseShadowColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primary)),
                    child: Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.surface),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ButtonStyle(
                      shadowColor:
                          const WidgetStatePropertyAll(Values.baseShadowColor),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                    ),
                    child: Text(
                      "Register",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
