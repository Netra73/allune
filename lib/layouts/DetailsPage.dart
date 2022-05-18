import 'dart:convert';
import 'package:allune/style/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15.0,left: 20.0,right: 20.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.red,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
                              hintText: "User Name ",
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black))
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0,left: 20.0,right: 20.0),
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Password';
                            }
                            else{
                              return null;
                            }
                          },

                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
                              hintText: 'Password',
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black))
                          ),

                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                          width: 180.0,
                          height: 50.0,
                          child: ElevatedButton(
                            child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                              primary:Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                            },
                          )
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User? ',style: TextStyle(fontSize:18),),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Text('Create Account',style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,
                            ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

