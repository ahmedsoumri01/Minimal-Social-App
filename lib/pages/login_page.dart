import 'package:flutter/material.dart';
import 'package:minimal_social_app/components/my_button.dart';
import 'package:minimal_social_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
//Text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key, this.onTap}) : super(key: key);

//login method
  void login() {
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 50),
              //app name
              Text(
                "MINIMAL SOCIAL APP",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              //email textfield
              MyTextField(
                  hintText: "enter your email",
                  obscureText: false,
                  controller: emailController),
              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                  hintText: "enter your password",
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(height: 10),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              ),
              //sign in button
              const SizedBox(height: 25),
              MyButton(text: "Login", onTap: login),
              const SizedBox(height: 25),

              //dont have an account? register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? Register here "),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      " Register ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
