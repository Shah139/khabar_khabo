import 'package:flutter/material.dart';
import 'package:khabar_khabo/components/my_button.dart';
import 'package:khabar_khabo/components/my_textfield.dart';
import 'package:khabar_khabo/services/auth/auth_service.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget{
  final void Function()? onTap;


   const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  void login() async{
    //get instance of auth service

    final _authService = AuthService();

    try{
      await _authService.signInWithEmailPassword(emailcontroller.text, passwordcontroller.text);
    }
    catch(e){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        )
        );
        return;
    }
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            
            //message,app text
            Text(
              "Get your food instantly",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,

              ),
            ),

            const SizedBox(height: 25),

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
            

            // sign in button
            MyButton(
              text: "Sign In", 
              onTap:login,
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("SignUp Now",style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      )
                  ),
                )
              ],
            )
            // register button
          ],
        ),
      ),
    );
  }
}