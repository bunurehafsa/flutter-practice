import 'package:flutter/material.dart';

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
          title: Text("appbar"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () => {print("onPress")},
                onLongPress: () => {print("OnLongPress")},
                child: Text("Elevator")),
            IconButton(
                onPressed: () => {print("IconButton")}, icon: Icon(Icons.menu)),
            GestureDetector(
              onTap: () => print("gesture detector clicked"),
              onDoubleTap: () {
                print('double tap down');
              },
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(border: Border.all(width: 3))),
            ),
            InkWell(
              onTap: () => print("InkWell"),
              splashColor: Colors.amber,
              highlightColor: Colors.red,
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                  )),
            ),
            //FadeInImage.assetNetwork(
            // placeholder: 'assets/me.png',
            //  image:'https://picsum.photos/200/300'
            //  ),
            //Image.network(
            //  'https://picsum.photos/200/300',
            // width:100,
            // height:100,
            // ),
            Image(
              image: AssetImage('assets/me.png'),
              width: 100,
              height: 100,
            )
          ],
        ));
  }
}
