import 'package:ai_fitting/screens/card_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cart extends StatelessWidget {
  cart({Key? key}) : super(key: key);
 var productList = [
    {'name': 'asdfg', 'price': '345', 'size': '4'},
    {'name': 'sdfghj', 'price': '347', 'size': '5'},
    {'name': 'xfgh', 'price': '348', 'size': '21'},
    {'name': 'kjyg', 'price': '350', 'size': '42'},
    {'name': 'cvbn', 'price': '376', 'size': '45'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          actions: [],
          title: Text('Cart')),
          body: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(productList[index]['name']!),
                  subtitle:Text(productList[index]['price']!),
                  leading:CircleAvatar(backgroundImage: NetworkImage('https://img.freepik.com/free-vector/summer-clothes-set_74855-446.jpg') ) ,
                  trailing:   IconButton(
                              onPressed: () {}, icon: Icon(Icons.remove_shopping_cart)),
                ),

              );

            }),
            floatingActionButton:ElevatedButton(onPressed: (){
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CardSummary();
                          }
                        ),
                      );

            }, child: Text('Proceed To Checkout'))
    );
    
  }
}