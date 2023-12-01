import 'package:expenses/constants.dart';
import 'package:expenses/screens/components/text_field.dart';
import 'package:expenses/screens/login_register/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 10,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF28282D),
            ),
            width: 150,
            height: 6,
          ),
        ),
      ),
      backgroundColor: lightBg,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("logo.svg"),
            MyTextField(
              placeholder: "Email",
              width: 400,
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              placeholder: "Senha",
              width: 400,
              controller: senhaController,
            ),
            const SizedBox(
              height: 30,
            ),
            const MyButton(
              text: "Entrar",
              func: "login",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Já tem um conta? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      color: Color(0xFF119BFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
