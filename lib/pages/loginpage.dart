import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/cus_button.dart';
import 'package:food_delivery_app/components/cus_textfield.dart';
import 'package:food_delivery_app/pages/homepage.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  ///login Method

  void Login() async {
    // get instance of auth service
    final _authService = AuthServices();

    //try sign in
    try {
      await _authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    }

    //display any errors
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Invalid Credentials"),
              ));
    }
  }

  //forgot password
  void forgotPw() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
    );
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
                size: 82,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 15),

              //message,app slogan

              Text(
                'Blessing Food Delivery App',
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

              ///sign in  button
              const SizedBox(height: 25),
              CusButton(
                text: "Sign in",
                onTap: Login,
              ),

              ///not a member register now
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text('Register now',
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
