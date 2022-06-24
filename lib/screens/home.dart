

import 'package:ai_fitting/screens/cart.dart';
import 'package:ai_fitting/screens/complaint.dart';
import 'package:ai_fitting/screens/delivary_details.dart';
import 'package:ai_fitting/screens/edit_profile.dart';
import 'package:ai_fitting/screens/view_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  var productList = [
    {'name': 'asdfg', 'price': '345', 'size': '4'},
    {'name': 'sdfghj', 'price': '347', 'size': '5'},
    {'name': 'xfgh', 'price': '348', 'size': '21'},
    {'name': 'kjyg', 'price': '350', 'size': '42'},
    {'name': 'cvbn', 'price': '376', 'size': '45'}
  ];

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(actions:
       [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
       IconButton(onPressed:(){}, icon: Icon(Icons.image)),
       IconButton(onPressed:(){
        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return cart();
                          }
                        ),
                      );
       }, icon: Icon(Icons.shopping_cart_checkout))
      ],title: Text('Welcome'),),
      
        body: Column(
      children: [
        Container(
          height: deviceHeight - 150,
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(80),
                child: Container(
                  color: Colors.redAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://img.freepik.com/free-vector/summer-clothes-set_74855-446.jpg'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.rate_review)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.fit_screen))
                        ],
                      ),
                      Text(
                        productList[index]['name']!,
                      ),
                      Text(
                        productList[index]['price']!,
                      ),
                      Text(
                        productList[index]['size']!,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Container(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {
                  
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfileView();
                          },
                        ),
                      );
                    
                }, icon: Icon(Icons.person)),
                InkWell(
                  onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Complaint();
                          }
                        ),
                      );},
                  child: Container(child: Image.asset('assets/download.png'),
                  width: 25,)),
                
            
                  
                
                       
                  
                IconButton(onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DelivaryDetails();
                          }
                        ),
                      );
                }, icon: Icon(Icons.directions_bike)),
                IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              ],
            )),
      ],
    ));
  }
}
