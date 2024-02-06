import 'package:flutter/material.dart';
import 'package:vk_app/Theme/text_field_theme.dart';
import 'package:vk_app/Theme/text_theme.dart';
import 'package:vk_app/pages/code_verifacation.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25,
          onPressed: () {
            Navigator.of(context).pushNamed('/auth');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent.shade400,
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/logo.png', width: 30),
            const Text(
              'ID',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Введите номер',
              style: TextMain.style,
            ),
            const SizedBox(height: 15),
            Text(
              'Ваш номер телефона будет использоваться\nдля входа в аккаунт',
              style: SubText.style,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 50,
              child: TextField(
                  onChanged: (value) {
                    setState(() {
                      myController;
                    });
                  },
                  controller: myController,
                  keyboardType: TextInputType.number,
                  maxLength: 17,
                  autofocus: true,
                  decoration: TextFieldNumber.style),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: myController.text.length >= 5
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CodeVerification(myController: myController),
                          ),
                        );
                      }
                    : null,
                child: const Text('Продолжить'),
                style: ElevatedButton.styleFrom(
                  surfaceTintColor: Colors.orange,
                  backgroundColor: myController.text.length <= 5
                      ? null
                      : Colors.blueAccent.shade400,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  disabledForegroundColor: Colors.white.withOpacity(0.8),
                  disabledBackgroundColor: Colors.blueAccent.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
