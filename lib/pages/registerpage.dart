import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cus_button.dart';
import 'package:food_delivery_app/components/cus_textfield.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  void register() async {
    // get auth services
    final _authService = AuthServices();

    //check if passwords match -> create user
    if (passwordController.text == confirmpasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('You have Logged In'),
                ));
      }

      //display any error
      catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Passwords do not match"),
        ),
      );
    }
    //if passwords don't match -> show error
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.dinner_dining,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 15),

              //message,app slogan

              Text(
                "Let's create an account for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              ///email textfield
              CusTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),

              ///password textfield
              const SizedBox(height: 10),
              CusTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),

              ///Confirm password textfield
              const SizedBox(height: 10),
              CusTextfield(
                  controller: confirmpasswordController,
                  hintText: "Confirm Password",
                  obscureText: true),

              ///sign in  button
              const SizedBox(height: 25),
              CusButton(
                text: "Sign Up",
                onTap: register,
              ),

              ///Already have a accoun Log in Her
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text('Login now',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
