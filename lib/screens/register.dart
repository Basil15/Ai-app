import 'package:ai_fitting/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final contactnumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
 
  final formkey = GlobalKey<FormState>();
  register() async {
    String apiurl = "https://reqres.in/api/register";
    final response = await post(Uri.parse(apiurl),
        body: {"email": 'shanu@shanu.com', "password": 'dfghjkjhg'});
    print(response.body);
  }

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical: deviceHeight * .01),
                  child: TextFormField(
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
                        }
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Email'))),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical: deviceHeight * .01),
                  child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "the field is empty";
                        }
                      },
                      controller: genderController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Gender'))),
                ),Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical: deviceHeight * .01),
                  child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "the field is empty";
                        } else if (value.length < 8) {}
                      },
                      controller: contactnumberController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Contact Number'))),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical: deviceHeight * .01),
                  child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "the field is empty";
                        }
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('Password'))),
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
                      controller: confirmpasswordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          label: Text('ConfirmPassword'))),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(usernameController.text);
                      print(passwordController.text);
                      formkey.currentState!.validate();
                      register();
                    },
                    child: const Text('Register')),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ),
                      );
                    },
                    child: const Text('SIGN IN')),
               
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
