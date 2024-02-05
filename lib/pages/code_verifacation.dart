import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vk_app/Theme/text_theme.dart';

class CodeVerification extends StatefulWidget {
  TextEditingController myController = TextEditingController();
  CodeVerification({super.key, required this.myController});

  @override
  State<CodeVerification> createState() => _CodeVerificationState(
    myController: myController,
  );
}

class _CodeVerificationState extends State<CodeVerification> {

  TextEditingController myController = TextEditingController();
  _CodeVerificationState({required this.myController});

  TextEditingController verifyController = TextEditingController();
  int timeValue = 60;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick <= 60){
        setState(() {
          timeValue--;
        });
      } else {
        timer.cancel();
      }
      if (verifyController.text.length == 6){
        timer.cancel();
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25,
          onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back, color: Colors.blueAccent.shade400,),),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/logo.png', width: 30),
            const Text('ID', style: TextStyle(
              color: Colors.black,
            ),),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10),
            Text('Подтвердите номер', style: TextMain.style),
            SizedBox(height: 15),
            Text('SMS с кодом отпарвленно на номер\n+7${myController.text}', style: SubText.style, textAlign: TextAlign.center),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: TextField(
                controller: verifyController,
                onChanged: (value){
                  setState(() {
                    verifyController;
                  });
                },
                textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    counterText: '',
                    hintText: 'Код из SMS',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent.shade100,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: verifyController.text.length == 6 ? () {} : null,
                child: Text('Продолжить'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent.shade400,
                  disabledBackgroundColor: Colors.blueAccent.shade100,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('SMS придёт в течение $timeValue секунд', style: SubText.style),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
