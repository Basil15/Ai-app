import 'package:ai_fitting/screens/home.dart';
import 'package:ai_fitting/screens/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.izUIordFIwP3uu2HPM2apgHaDt?w=291&h=174&c=7&r=0&o=5&dpr=1.5&pid=1.7"))),
          ),
          Form(
            key: formkey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 50, vertical: deviceHeight * .01),
                child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "the field is empty";
                      }
                    },
                    controller: usernameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        label: Text('UserName'))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 50, vertical: deviceHeight * .01),
                child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "the field is empty";
                      } else if (value.length < 8) {}
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        label: Text('Password'))),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return home();
                      },
                    ));
                  print(usernameController.text);
                  print(passwordController.text);
                  formkey.currentState!.validate();
                    

                },
                child: const Text('SIGN IN'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Register();
                      },
                    ));
                  },
                  child: Text('SIGN UP'))
            ]),
          ),
        ],
      ),
    );
  }
}
