import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DelivaryDetails extends StatelessWidget {
  DelivaryDetails({Key? key}) : super(key: key);
  var OrderedList = [
    {'Time': '10.00am', 'status': '345'},
    {'Time': '12.00am', 'status': '347'},
    {'Time': '10.00am', 'status': '348'},
    {'Time': '11.00am', 'status': '350'},
    {'Time': '10.00am', 'status': '376'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [], title: Text('Delivary Details')),
      body: ListView.builder(
          itemCount: OrderedList.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    title: Text(OrderedList[index]['Time']!),
                    subtitle: Text(OrderedList[index]['status']!),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/summer-clothes-set_74855-446.jpg'),
                    )));
          }),
    );
  }
}
