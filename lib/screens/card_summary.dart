import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardSummary extends StatelessWidget {
  const CardSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [], title: Text('Cart Summary')),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 183, 201, 215),
            ),
            height: 350,
            width: 310,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('569'),
                  ElevatedButton(
                      onPressed: () {}, child: Text('Cash Own delivery'))
                ],
              ),
            ),
          ),
        ));
  }
}
