import 'package:flutter/material.dart';
import 'package:minimal_social_app/components/my_button.dart';
import 'package:minimal_social_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
//Text editing controller
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPWController = TextEditingController();
  final void Function()? onTap;

  RegisterPage({Key? key, this.onTap}) : super(key: key);
//login method
  void register() {
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
              //username textfield
              MyTextField(
                  hintText: "enter your username",
                  obscureText: false,
                  controller: usernameController),
              const SizedBox(height: 10),

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

              //password textfield
              MyTextField(
                  hintText: "confirm your password",
                  obscureText: true,
                  controller: confirmPWController),
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
              //sign up button
              const SizedBox(height: 25),
              MyButton(text: "Register", onTap: register),
              const SizedBox(height: 25),

              //dont have an account? register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("alredy have an account? login here "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Login ",
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
