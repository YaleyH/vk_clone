import 'package:flutter/material.dart';
import 'package:vk_app/Theme/text_theme.dart';

class TapeWidget extends StatelessWidget {
  const TapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: Column(
        children: [
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.blueAccent.shade200,
                        width: 3,
                      ),
                      vertical: BorderSide(
                        color: Colors.blueAccent.shade200,
                        width: 3,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 400,
                    width: 200,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin:
                              EdgeInsets.only(left: 10, top: 10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                BorderRadius.circular(100),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  'Название сообщества',
                                  style: TextMain.style,
                                ),
                                Text(
                                  'Подтекст',
                                  style: SubText.style,
                                ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            RotatedBox(
                              quarterTurns: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('assets/like.png', width: 40,),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/comment.png'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/share.png'),
                            ),
                            Expanded(child: SizedBox()),
                            Image.asset('assets/eye.png'),
                            SizedBox(width: 10),
                            Text('15k', style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
