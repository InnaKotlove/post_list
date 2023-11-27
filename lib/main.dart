import 'package:contact_list/pages/images_page.dart';
import 'package:contact_list/pages/post_page.dart';
import 'package:contact_list/pages/widget_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  void onTaped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  Widget body(int index) {
    switch (index) {
      case 0:
        return PostPage();
      case 1:
        return ImagePage();
      case 2:
        return WidgetPage();
      default:
        return PostPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: onTaped,
        backgroundColor: Colors.blueGrey.shade100,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined), label: 'Image'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'My widgets'),
        ],
      ),
    );
  }
}
