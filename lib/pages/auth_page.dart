import 'package:flutter/material.dart';
import 'package:vk_app/Theme/button_theme.dart';
import 'package:vk_app/Theme/text_field_theme.dart';
import 'package:vk_app/Theme/text_theme.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Container(
                child: Column(
                  children: [
                    Image.asset('assets/logo/logo.png', width: 70,),
                    const SizedBox(height: 10),
                    const Text('Вход Вконтакте', style: TextMain.style),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                child: TextField(
                  decoration: TextFieldAuth.style
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Войти'),
                  style: BlueButton.style
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registration');
                  },
                  style: GreenButton.style,
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
