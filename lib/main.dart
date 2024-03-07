// import 'dart:ffi';
import 'package:appmania_final/menu.dart';
import 'package:appmania_final/second_screen.dart';
import 'package:appmania_final/salad_detalis.dart';
import 'package:appmania_final/cart_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: ' '),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool touch = true;
bool touch1 = false;
bool touch2 = false;
int index = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        title: Text("Ahmedabad"),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.location_on,
            color: Colors.black,
            size: 26.0,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => secondScreen()));
              },
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 26.0,
              ),
            ),
          ),
        ],

      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Find The',
                        style: TextStyle(fontSize: 35, color: Colors.black))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '  Best',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ])),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Food',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: ' Around You',
                        style: TextStyle(fontSize: 35, color: Colors.black))
                  ])),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 5, bottom: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search your favoirite food',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Icon(Icons.filter_tilt_shift),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Find',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '  5 km >',
                        style: TextStyle(fontSize: 20, color: Colors.orange))
                  ])),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => secondScreen()));},
                  child:
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'salad',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        //InkWell()
                      ],
                    ),
                    // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: 50,
                    width: 90,
                    //padding:,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'hot sale',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black26,
                            width: 1,
                            style: BorderStyle.solid),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'popularity',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black26,
                            width: 1,
                            style: BorderStyle.solid),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 392,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: SaladDetails.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisExtent: 239,
                        mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Menu(saladdata: SaladDetails[index])));
                          },
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 109,
                                          width: 109,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(SaladDetails[index].image!),fit:BoxFit.cover),
                                              shape: BoxShape.circle,
                                              color: Colors.green),
                                        ),
                                      ),
                                      Container(
                                        height: 113,
                                       decoration: BoxDecoration(color: Colors.green.shade100,borderRadius: BorderRadius.circular(10)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(SaladDetails[index].name!,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16)),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(7.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(SaladDetails[index].time!,style: TextStyle(fontSize: 14)),
                                                  Row(
                                                    children: [
                                                      Icon(CupertinoIcons.star_fill,color: Colors.orange,size:18,),
                                                      SizedBox(
                                                        width: 3,
                                                      ),
                                                      Text(SaladDetails[index].rate.toString()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child: Text('\$${SaladDetails[index].price.toString()}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ),
                                                InkWell(
                                                  onTap: ()
                                                  {
                                                    CartModel cart = CartModel(
                                                        name: SaladDetails[index].name,
                                                        time: SaladDetails[index].time,
                                                        image: SaladDetails[index].image,
                                                        plate: SaladDetails[index].plate,
                                                        price: SaladDetails[index].price,
                                                        rate: SaladDetails[index].rate,
                                                        qty: 1);
                                                    cartdata.add(cart);
                                                    print(cartdata.length);
                                                  },
                                                  child: Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                            Radius.circular(
                                                                10),
                                                            bottomRight:
                                                            Radius.circular(
                                                                10))),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 17,
                                                    ),),),],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(CupertinoIcons.heart)),
                                  )
                                ],
                              ),
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
