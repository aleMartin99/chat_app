import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:real_time_chat/widgets/custom_input.dart';
import 'package:real_time_chat/widgets/labels.dart';
import 'package:real_time_chat/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Logo(),
            _Form(),
            Labels(),
            Text(
              'Terms and Conditions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailContr = TextEditingController();
  final passContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            hintText: 'Email',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            textController: emailContr,
            isPassword: false,
          ),
          CustomInput(
            hintText: 'Password',
            icon: Icons.lock_outline,
            textController: passContr,
            isPassword: true,
          ),

          //TODO implement button
          ElevatedButton(
            onPressed: () {
              if (kDebugMode) {
                print(emailContr);
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}
