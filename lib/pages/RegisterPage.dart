import 'package:flutter/material.dart';

import '../components/My_button.dart';
import '../components/Text_field.dart';
class RegisterPage extends StatefulWidget {
   RegisterPage({super.key, this.OnTap});

   final void Function()? OnTap;
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
final EmailController = TextEditingController();
final PassController = TextEditingController();
final ConPassController =TextEditingController();
void SignUp(){

}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    " Let's create a Account for you!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 24,
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
              MyTextField(
                  hinttext: ('Confirm password'),
                  unknowntext: false,
                  controller: ConPassController),
              //login in button
              const SizedBox(
                height: 20,),
                  MyButton(ontap: SignUp, text: "Sign Up"),
                  SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already Signed Up ? ',),
                      GestureDetector(
                        onTap: widget.OnTap,
                        child: Text('Login Now',
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

