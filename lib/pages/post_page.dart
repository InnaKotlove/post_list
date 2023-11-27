import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);

  List<PostModel> postList = [
    PostModel(image: 'https://media.cntraveler.com/photos/64c2a8052e6469f8103691aa/16:9/w_1920,c_limit/Amsterdam-Took-a-Big-Step-Toward-Banning-Cruise-Ships-From-the-City-Center_GettyImages-1394428970.jpg',
        description: 'Amsterdam'),
    PostModel(image: 'https://ic.pics.livejournal.com/dergachev_va/58474394/3338722/3338722_original.jpg',
        description: 'Den Haag'),
    PostModel(image: 'https://media.nu.nl/m/9q7xwqqa5mmx_wd854/rotterdam-skyline.jpg',
        description: 'Rotterdam'),
    PostModel(image: 'https://www.amsterdam.net/en/wp-content/uploads/sites/136/volendam-holland.jpg',
        description: 'Volendam'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return Column(
            children : [Image.network(postList[index].image),
              Text(postList[index].description),]
          );
        },
      ),
    );
  }
}

class PostModel {
  final String image;
  final String description;

  PostModel({required this.image, required this.description});
}
