import 'dart:convert';
import 'package:allune/style/textstyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BulletinsBoard extends StatefulWidget {
  const BulletinsBoard({Key? key}) : super(key: key);

  @override
  _BulletinsBoardState createState() => _BulletinsBoardState();
}

class _BulletinsBoardState extends State<BulletinsBoard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90.0,left: 10.0,right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("Saturday,August 21th,",style: mainStyle.text14Gray),
            SizedBox(height: 2,),
            Text("Welcome back,",style: mainStyle.text20Bold),
            Text("Jeniffer,",style: mainStyle.text20Bold),
            SizedBox(height: 10,),
            Container(
              height: 40.0,
              width: 400.0,
              //color: Colors.transparent,
              child:  Container(
                  decoration:  BoxDecoration(
                      color: mainStyle.bgColor,
                      borderRadius:  BorderRadius.only(
                        topLeft:  Radius.circular(20.0),
                        topRight:  Radius.circular(20.0),
                        bottomLeft:  Radius.circular(20.0),
                        bottomRight:  Radius.circular(20.0),
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30.0,
                        width: 90.0,
                        color: Colors.transparent,
                        child:  Container(
                            decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius:  BorderRadius.only(
                                  topLeft:  Radius.circular(20.0),
                                  topRight:  Radius.circular(20.0),
                                  bottomLeft:  Radius.circular(20.0),
                                  bottomRight:  Radius.circular(20.0),
                                )
                            ),
                            child:  Center(child: Text("Feeds"))
                        ),
                      ),
                      Container(
                        height: 20.0,
                        width: 80.0,
                        color: Colors.transparent,
                        child:  Container(
                            decoration:  BoxDecoration(
                                borderRadius:  BorderRadius.only(
                                  topLeft:  Radius.circular(20.0),
                                  topRight:  Radius.circular(20.0),
                                  bottomLeft:  Radius.circular(20.0),
                                  bottomRight:  Radius.circular(20.0),
                                )
                            ),
                            child:  Center(child: Text("Popular"))
                        ),
                      ),
                      Container(
                        height: 20.0,
                        width: 80.0,
                        color: Colors.transparent,
                        child:  Container(
                            decoration:  BoxDecoration(
                                borderRadius:  BorderRadius.only(
                                  topLeft:  Radius.circular(20.0),
                                  topRight:  Radius.circular(20.0),
                                  bottomLeft:  Radius.circular(20.0),
                                  bottomRight:  Radius.circular(20.0),
                                )
                            ),
                            child:  Center(child: Text("Following"))
                        ),
                      ),                   ],
                  )
              ),
            ),
            SizedBox(height: 10,),
            Banner(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Just For You,",style: mainStyle.text20Bold),
                Text("see more",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),
              ],
            ),
            Expanded(
              child:ListView.builder(
                  shrinkWrap: true,
                  itemCount:5,
                  itemBuilder: (cc, i) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 15,
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 20,bottom: 10.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20.0,
                                    width: 80.0,
                                    color: Colors.transparent,
                                    child:  Container(
                                        decoration:  BoxDecoration(
                                            color: mainStyle.bgColor,
                                            borderRadius:  BorderRadius.only(
                                              topLeft:  Radius.circular(20.0),
                                              topRight:  Radius.circular(20.0),
                                              bottomLeft:  Radius.circular(20.0),
                                              bottomRight:  Radius.circular(20.0),
                                            )
                                        ),
                                        child:  Center(child: Text("Productvity"))
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(" Elon Musk on How to learn",style: mainStyle.text20Bold),
                                  Text("and adapath more Faster:",style: mainStyle.text20Bold),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30.0,
                                        width: 30.0,
                                        color: Colors.transparent,
                                        child:  Container(
                                          decoration:  BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:  BorderRadius.only(
                                                topLeft:  Radius.circular(20.0),
                                                topRight:  Radius.circular(20.0),
                                                bottomLeft:  Radius.circular(20.0),
                                                bottomRight:  Radius.circular(20.0),
                                              )
                                          ),
                                          child:Icon(Icons.network_cell,color: Colors.white,size: 15,),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text("How to be better",style: mainStyle.text12),
                                      SizedBox(width: 5,),
                                      Text("4 min",style: mainStyle.text12),
                                      SizedBox(width: 5,),
                                      Text("12 Hours Ago",style: mainStyle.text12),

                                    ],
                                  )
                                ],
                              ),
                              SizedBox(width: 20,),
                              Container(
                                child:Image.asset("assets/images/bboy.jpg"),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.green, spreadRadius: 3),
                                  ],
                                ),
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              /*ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (cc, i) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                //  elevation: 1,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text("Netra",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
                        SizedBox(height: 5,),
                        //DescriptionTextWidget(text: eList[i].description),
                        Text("More Info",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                );
              }),*/
            ),

          ],
        ),
      ),

    );
  }
}
class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCarousel(
      widgets: const [
        CarouselItem(),
        CarouselItem(),
        CarouselItem(),
        CarouselItem(),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child:Image.asset("assets/images/launchtwo.jpg"),
      ),
    );
  }
}

class MyCarousel extends StatefulWidget {
  final List<Widget> widgets;
  final double? height;

  const MyCarousel({
    Key? key,
    required this.widgets,
    this.height,
  }) : super(key: key);

  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int _current = 0;

  _MyCarouselState();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselSlider(
          items: widget.widgets,
          options: CarouselOptions(
            height: widget.height,
            viewportFraction: 0.92,
            aspectRatio: 16 / 6,
            enableInfiniteScroll: false,
            onPageChanged: (index, CarouselPageChangedReason reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        if (widget.widgets.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < widget.widgets.length; i++)
                Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == i ? Colors.black : Colors.black12,
                    ))
            ],
          )
        else
          SizedBox(height: 12)
      ],
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}