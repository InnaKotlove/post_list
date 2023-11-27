import 'package:contact_list/pages/post_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  List<String> imageList = [
    'https://media.cntraveler.com/photos/64c2a8052e6469f8103691aa/16:9/w_1920,c_limit/Amsterdam-Took-a-Big-Step-Toward-Banning-Cruise-Ships-From-the-City-Center_GettyImages-1394428970.jpg',
    'https://ic.pics.livejournal.com/dergachev_va/58474394/3338722/3338722_original.jpg',
    'https://media.nu.nl/m/9q7xwqqa5mmx_wd854/rotterdam-skyline.jpg',
    'https://www.amsterdam.net/en/wp-content/uploads/sites/136/volendam-holland.jpg',
    'https://cdn.tripzaza.com/ru/destinations/wp-content/uploads/2017/06/Netherlands-1-Canals-of-Amsterdam-e1497055373982.jpg',
    'https://priroda.club/uploads/posts/2023-08/1690884238_priroda-club-p-niderlandi-peizazhi-instagram-53.jpg',
    'https://goholland.ru/wp-content/uploads/2020/01/gollandskie-derevni-02.jpg',
    'https://www.zastavki.com/pictures/originals/2020World___Netherlands_Beautiful_evening_city_view_by_the_river__Netherlands_143976_.jpg',
    'https://www.orangesmile.com/extreme/img/main/castle-muiderslot_1.jpg',
  ];

  ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        itemBuilder: (context, index) {
          return Image.network(imageList[index]);
        },
      ),
    );
  }
}
