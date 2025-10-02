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
                    color: Colors.blue,
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
                          fit: StackFit.passthrough,
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              'assets/headphones.png',
                              height: 280,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: size.height * .09,
                              child: Container(
                                height: 190,
                                width: 190,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueGrey,
                                    width: 15,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/locucao.png',
                                    height: 190,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
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
                    color: Colors.blue,
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
