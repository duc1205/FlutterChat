import 'package:chat1/components/primary_button.dart';
import 'package:chat1/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2,
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 150,
              ),
              const Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatsScreen(),
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                text: "Sign Up",
                press: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
