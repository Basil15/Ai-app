import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileEdit extends StatefulWidget {
   ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final usernameController = TextEditingController();

  final emailController = TextEditingController();

  final contactController = TextEditingController();

  final passwordController = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController.text='23456';
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],title: Text('profile'),),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [CircleAvatar(radius: 40,child: Icon(Icons.person),),
         Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical:  10),
                  child: TextField(
                    
                      controller: usernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('name'))),
                ),
         Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical:  .10),
                  child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Email'))),
                ),
         Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical:  10),
                  child: TextField(
                      controller: contactController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Contact'))),
                ),
        Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical:  10),
                  child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('password'))),
                        
                ),
         ElevatedButton(onPressed: (){}, child: Text('Save')),
        ],
      )
    );
    
  }
}