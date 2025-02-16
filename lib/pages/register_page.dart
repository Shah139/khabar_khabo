import 'package:flutter/material.dart';
import 'package:khabar_khabo/components/my_button.dart';
import 'package:khabar_khabo/components/my_textfield.dart';
import 'package:khabar_khabo/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();



   void register() async {
  final _authService = AuthService();
  
  if(passwordcontroller.text == confirmPasswordController.text) {
    try {
      await _authService.signUpWithEmailPassword(
        emailcontroller.text, 
        passwordcontroller.text
      );
    } catch(e) {
      if (mounted) {
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          )
        );
      }
    }
  } else {
    if (mounted) {
      showDialog(
        context: context, 
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match"),
        )
      );
    }
  }
}


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 80, // Slightly smaller icon
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 15),
                
                // message, app text
                Text(
                  "Get your food instantly",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(height: 20),

                MyTextfield(
                  controller: emailcontroller,
                  hintText: "Email",
                  obsecureText: false
                ),

                const SizedBox(height: 10),
              
                // password textfield
                MyTextfield(
                  controller: passwordcontroller,
                  hintText: "Password",
                  obsecureText: true
                ),
                
                const SizedBox(height: 10),

                MyTextfield(
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  obsecureText: true
                ),
                
                const SizedBox(height: 20),
                
                // sign up button
                MyButton(
                  text: "Sign Up", 
                  onTap: register
                ),
                
                const SizedBox(height: 15),
                
                // already have an account ? login here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account ?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login here",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}