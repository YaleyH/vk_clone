import 'package:flutter/material.dart';
import 'package:vk_app/Theme/text_theme.dart';
import 'package:vk_app/tabbar_list/tape.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          title: Text(
            'Главная',
            style: TextMain.style,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                size: 25,
                color: Colors.blueAccent.shade200,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.blueAccent.shade200,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 25,
                color: Colors.blueAccent.shade200,
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Лента',
              ),
              Tab(
                text: 'Для вас',
              ),
              Tab(
                text: 'Новости',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TapeWidget(),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Для вас',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Новости',
                style: TextStyle(fontSize: 40),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedLabelStyle: TextStyle(
            fontSize: 13,
          ),
          selectedItemColor: Colors.blueAccent.shade400,
          selectedIconTheme: IconThemeData(color: Colors.blueAccent.shade400),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home.png',
                color: index == 0 ? Colors.blueAccent.shade400 : Colors.grey,
              ),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/servis.png',
                color: index == 1 ? Colors.blueAccent.shade400 : Colors.grey,
              ),
              label: 'Сервисы',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/sms.png',
                color: index == 2 ? Colors.blueAccent.shade400 : Colors.grey,
              ),
              label: 'Мессенджер',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/clips.png',
                color: index == 3 ? Colors.blueAccent.shade400 : Colors.grey,
              ),
              label: 'Клипы',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/video.png',
                color: index == 4 ? Colors.blueAccent.shade400 : Colors.grey,
              ),
              label: 'Видео',
            ),
          ],
        ),
      ),
    );
  }
}
