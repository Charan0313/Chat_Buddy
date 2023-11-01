import 'package:chat_buddy/components/My_button.dart';
import 'package:chat_buddy/components/Text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key , required this.OnTap});
 final void Function()? OnTap;
  final EmailController = TextEditingController();
  final PassController = TextEditingController();

  void Login(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //logo
                  const SizedBox(
                    height: 85,
                  ),
                  const Icon(
                    Icons.message,
                    size: 110,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //msg
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //email
                  MyTextField(
                      hinttext: ('Email'),
                      unknowntext: false,
                      controller: EmailController),
                  //password
                  const SizedBox(
                    height: 30,
                  ),
                  MyTextField(
                      hinttext: ('Password'),
                      unknowntext: false,
                      controller: PassController),
                  //login in button
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(ontap: Login, text: "Login"),
                  SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a Member ? ',),
                      GestureDetector(
                        onTap: OnTap,
                        child: const Text('Register now',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
