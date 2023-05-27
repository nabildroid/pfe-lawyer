import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.75,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Sign up",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    LoginInput(
                      icon: Icons.person_outlined,
                      label: "Username",
                    ),
                    const SizedBox(height: 10),
                    LoginInput(
                      icon: Icons.email_outlined,
                      label: "Email",
                    ),
                    const SizedBox(height: 10),
                    LoginInput(
                      icon: Icons.phone_outlined,
                      label: "phone",
                    ),
                    const SizedBox(height: 10),
                    LoginInput(
                      icon: Icons.lock_outlined,
                      label: "Password",
                    ),
                    const SizedBox(height: 10),
                    LoginInput(
                      icon: Icons.lock_outlined,
                      label: "Confirm Password",
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilledButton(
                          onPressed: () {},
                          child: Text("Sign up"),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            context.go('/login');
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 1 - 0.72,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Align(
                        child: Text(
                          "New Here?\nwalcome to our Firm Law",
                          style: GoogleFonts.italiana(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          "assets/login_icon.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
