import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appBar = AppBar(
      title: Text('Web Rádio'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .08,
                    child: Center(
                      child: Text(
                        'Parque Verde',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              'assets/headphones.png',
                              height: 280,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 5,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/locucao.png',
                                  height: 140,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.deepPurpleAccent,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .12,
                    child: Column(
                      children: [
                        Text('Paulo Roberto', style: TextStyle(fontSize: 22)),
                        Text(
                          'Prefixo Web Rádiop',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .4,
                    child: Center(child: Text('${constraints.maxHeight}')),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
