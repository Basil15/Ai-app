

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Complaint extends StatelessWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [],
          title: Text('Complaint')),
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField( decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            label: Text('Enter Your Complaint')),
            maxLines: 5,
          ),
        ),
        ElevatedButton(onPressed: (){}, child: Text('Submit'))
      ],),
    );
    
    
  }
  
}