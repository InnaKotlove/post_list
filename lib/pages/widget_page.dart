import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  WidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        title: const Text('Widgets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.all(10.0),
            child:  Text(
              'Есть два способа жить: вы можете жить так, как будто чудес не бывает и вы можете жить так, как будто все в этом мире является чудом...',
              style: TextStyle(color: Colors.green.shade200, fontSize: 25,
              fontWeight: FontWeight.w600),

            ),
          ),
          const SizedBox(height: 10),
          Image.network(''
              'https://24tv.ua/resources/photos/news/202001/1258813.jpg?v=1661272028000&w=840&h=472&fit=cover&output=webp&q=50' ),

        ],
      ),
    );
  }
}
