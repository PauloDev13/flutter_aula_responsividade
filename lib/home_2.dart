import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBar = AppBar(title: Text('Parque Verde'), centerTitle: true);
    var screenHeigth =
        (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        width: size.width,
        height: size.height,
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: size.width,
              height: screenHeigth * .5,
            ),
            Container(
              color: Colors.orangeAccent,
              width: size.width,
              height: screenHeigth * .5,
            ),
          ],
        ),
      ),
    );
  }
}
