//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ImagesAndButton extends StatefulWidget {
  const ImagesAndButton({super.key});

  @override
  State<ImagesAndButton> createState() => _ImagesAndButtonState();
}

class _ImagesAndButtonState extends State<ImagesAndButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("ListView & GridView")),
        ),
        body:gridViewBuilder);
        
  }
  static List<String> listViewItems=[
          'https://cdn.pixabay.com/photo/2024/04/13/10/20/peacock-8693634_960_720.jpg',
          'https://cdn.pixabay.com/photo/2024/04/16/16/25/ai-generated-8700383_640.jpg',
          'https://cdn.pixabay.com/photo/2024/04/19/18/15/fresh-fruits-8706936_640.png',
          'https://cdn.pixabay.com/photo/2024/03/11/19/15/ai-generated-8627457_960_720.png',
          'https://cdn.pixabay.com/photo/2024/04/17/15/06/ai-generated-8702284_960_720.jpg',
          'https://cdn.pixabay.com/photo/2023/12/22/09/51/ai-generated-8463482_640.jpg',
          'https://cdn.pixabay.com/photo/2022/09/16/23/10/temple-7459835_640.jpg',
          'https://cdn.pixabay.com/photo/2024/04/18/10/09/globe-8704013_640.jpg',
          'https://cdn.pixabay.com/photo/2023/11/23/13/54/ai-generated-8408143_640.jpg',
          'https://cdn.pixabay.com/photo/2024/04/20/03/16/ai-generated-8707659_640.jpg',
          'https://cdn.pixabay.com/photo/2024/04/05/05/17/technology-8676540_640.jpg',
          'https://cdn.pixabay.com/photo/2019/06/17/19/48/source-4280758_640.jpg',
          'https://cdn.pixabay.com/photo/2018/12/10/02/14/manhattan-3866140_640.jpg',
          'https://cdn.pixabay.com/photo/2023/12/22/20/57/ai-generated-8464364_640.jpg',
          'https://cdn.pixabay.com/photo/2024/05/07/03/49/agave-8744705_640.jpg',
        ];
        Widget gridViewBuilder =GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
        mainAxisSpacing: 10,crossAxisSpacing: 10),
        itemCount: listViewItems.length,
         itemBuilder: (context,index){
          return Column(
            children: [
             // Text(listViewItems[index]),
              Image.network(listViewItems[index]),
              ElevatedButton(
                onPressed:(){
                  handleLaunchURL(listViewItems[index]);
                } ,
                 child: Text('Click Here'))
            ],
          );
         });
         static Future<void> handleLaunchURL(String _url) async {
          Uri _uri =Uri.dataFromString(_url);
             if (!await launchUrl(_uri)) {
                 throw Exception('Could not launch $_url');
  }
}
        //https://picsum.photos/200/100
        Widget listViewBuilder =ListView.builder(
          itemCount:listViewItems.length ,
          itemBuilder: (context, index) {
            return Container(
              child: Row(children:[Text(listViewItems[index]),Image.network('https://picsum.photos/200/100')]),
            );
          },
        );
        Widget listView = ListView(
          padding:EdgeInsets.all(10),
          children: [
            Container(
              color:Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 1'),),
            Container(
              color:Colors.white10,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 2'),),
            Container(
              color:Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 3'),),
            Container(
              color:Colors.white10,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 4'),),
            Container(
              color:Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 5'),),
            Container(
              color:Colors.white10,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 6'),),
            Container(
              color:Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 7'),),
            Container(
              color:Colors.white10,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 8'),),
            Container(
              color:Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 9'),),
            Container(
              color:Colors.white10,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Text('Item 10'),),
          ],
          

     ) ;
  }

