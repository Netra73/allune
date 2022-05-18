import 'dart:convert';
import 'package:allune/layouts/BulletinsBoard.dart';
import 'package:allune/layouts/DetailsPage.dart';
import 'package:allune/style/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }
  int selectedIndext =0;
  void setBottomBarIndex(int index){
    setState(() {
      selectedIndext = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBar(selectedindex: selectedIndext, setBottomBarIndex:setBottomBarIndex),
      body:SingleChildScrollView(
        child: Container(
          child: selectedIndext == 0
              ? DetailsPage()
             : selectedIndext == 1
              ? BulletinsBoard()
              : Container(),
        ),
      ),
      /*Center(
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
      ),*/
    );
  }

}

class BottomBar extends StatelessWidget {
  final int selectedindex ;
  final void Function(int index) setBottomBarIndex;
  const BottomBar({Key? key, required this.selectedindex, required this.setBottomBarIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BottomAppBar(
        color:Colors.white,
        child: Container(
          height: 65,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 35,
                      color: selectedindex == 0 ? Colors.green : Colors.black,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                    //splashColor: Colors.white,
                  ),
                  Text("Details",style: TextStyle(fontWeight:FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.chat,
                        size: 35,
                        color: selectedindex == 1 ? Colors.green: Colors.black,
                      ),
                      onPressed: () {
                        setBottomBarIndex(1);
                      }),
                  Text("BulletinsBoard",style: TextStyle(fontWeight:FontWeight.bold),),
                ],
              ),
              // SizedBox.shrink(),
            ],
          ),
        ),
      );
  }
}
