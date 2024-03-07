import 'package:appmania_final/main.dart';
import 'package:appmania_final/prac.dart';
import 'package:appmania_final/salad_detalis.dart';
import 'package:appmania_final/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'salad_detalis.dart';

class Menu extends StatefulWidget {
  final SaladData saladdata;

  const Menu({Key? key, required this.saladdata}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

int i = 1;

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //Icon(CupertinoIcons.heart, color: Colors.white,size: 25,)

        appBar: AppBar(
          // elevation: 0.3,
          backgroundColor: Colors.transparent,

          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                  size: 26.0,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Align(
          alignment: Alignment(0.2, -0.7),
          child: Container(
              width: 230.0,
              height: 230.0,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(widget.saladdata.image.toString(),),
                      fit: BoxFit.cover),
                  boxShadow: [BoxShadow(blurRadius: 30.0)])),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //body is start from here
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Container(
                      height: 570,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (i > 1) {
                                            i--;
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                        size: 22,
                                      )),
                                  Text(i.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          i++;
                                          if (i > 10) {
                                            i = 1;
                                          }
                                        });
                                      },
                                      icon: Icon(CupertinoIcons.plus,
                                          color: Colors.white, size: 22)),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              widget.saladdata.name.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 25),
                            ),
                          ),
                          Text(widget.saladdata.plate.toString(),
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade900)),
                          RichText(
                            text: TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 13)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black26,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/star.png')),
                                            color: Colors.blue,
                                            //borderRadius: BorderRadius.only(topLeft:Radius.circular(),bottomLeft: Radius.circular(10))
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black26,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(20)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/fire.png')),

                                            //borderRadius: BorderRadius.only(topLeft:Radius.circular(),bottomLeft: Radius.circular(10))
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '100 Kcal',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black26,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/alarm.png')),

                                            //borderRadius: BorderRadius.only(topLeft:Radius.circular(),bottomLeft: Radius.circular(10))
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '5-10 Min',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                // Padding(padding: EdgeInsets.all(1.0)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 5, top: 8),
                            child: Text(
                              'Ingradients',
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/tomato.webp'))),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/tomato.webp'))),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/avacodo.png'))),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/onion.webp'))),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/brocoli.webp'))),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              CartModel cart = CartModel(
                                  name: widget.saladdata.name,
                                  time: widget.saladdata.time,
                                  image: widget.saladdata.image,
                                  rate: widget.saladdata.rate,
                                  plate: widget.saladdata.plate,
                                  price: widget.saladdata.price,
                                  qty: i);
                              cartdata.add(cart);
                              // CartModel invoice = CartModel(
                              //     name: widget.saladdata.name,
                              //     time: widget.saladdata.time,
                              //     image: widget.saladdata.image,
                              //     rate: widget.saladdata.rate,
                              //     plate: widget.saladdata.plate,
                              //     price: widget.saladdata.price,
                              //     qty: i);
                              // cartpdf.add(invoice);
                              print(cartdata.length);

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                padding: EdgeInsets.only(left: 130, top: 18),
                                child: Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
