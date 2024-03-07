import 'package:appmania_final/cart_model.dart';
import 'package:appmania_final/invoice_creater.dart';
import 'package:appmania_final/main.dart';
import 'package:appmania_final/prac.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class secondScreen extends StatefulWidget {
  const secondScreen({Key? key}) : super(key:key);

  @override
  State<secondScreen> createState() => secondScreenState();
}

class secondScreenState extends State<secondScreen> {
  int total  = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/images/background.jpg'),
            fit: BoxFit.cover),
      ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold)
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                CupertinoIcons.multiply,
                size: 25,
                color: Colors.white,

              ),
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 628,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),

              //padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 10,
                  // ),
                 Container(
                   height: 330,
                   decoration: BoxDecoration(color: Colors.transparent),

                   child: ListView.separated(itemBuilder: (context,index){
                     return Container(
                       margin: EdgeInsets.all(8),
                       height: 85,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.grey.shade200),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SizedBox(width: 10,),
                           Row(
                             children: [
                               Container(
                                 height: 80,
                                 width: 80,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                   image: DecorationImage(
                                     fit: BoxFit.cover,
                                     image: AssetImage(
                                       cartdata[index].image.toString())),
                                   color: Colors.orange
                                 ),
                               ),
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 15,),
                               Text(cartdata[index].name.toString(),
                                   style: TextStyle(fontSize: 18,
                                    color: Colors.black,
                                   fontWeight: FontWeight.w500), ),
                               SizedBox(height: 10),

                               Text('\$${cartdata[index].price.toString()}',
                                    style: TextStyle(fontSize:18,
                                        color:Colors.black,
                                        fontWeight: FontWeight.bold),),
                             ],
                           ),
                           SizedBox(width: 30),
                           Column(
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.minus_circle_fill,
                                                               color: Colors.black, size: 20,)),
                                   Text(cartdata[index].qty.toString(),
                                   style: TextStyle(fontSize: 18,color: Colors.black,
                                    fontWeight: FontWeight.w600),),
                                   IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus_circle_fill,
                                   size: 20,color: Colors.black,)),
                                 ],
                               ),
                               SizedBox(
                                 height: 5,
                               ),
                               Text('\$ '+ total_qua_Price(cartdata[index].price!.toInt(),cartdata[index].qty!).toString(),
                                 style: TextStyle(fontSize: 18,
                                     color: Colors.grey,
                                     fontWeight: FontWeight.bold),
                               ),
                             ],
                           ),
                         ],
                       ),
                     );
                   },
                       shrinkWrap: true,
                       separatorBuilder: (context,index)
                       {
                     return SizedBox(height: 8,);
                     },
                       itemCount: cartdata.length),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55 ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(28)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 5, bottom: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(CupertinoIcons.ticket),
                            Text(
                              'Promo Code',
                              style: TextStyle(color: Colors.grey.shade800),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10.0, left: 22.0, top: 5, bottom: 5),
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              // height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      //width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 15),
                          Padding(
                              padding: EdgeInsets.only(right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal",style: TextStyle(fontSize: 18,color: Colors.black),),
                              Text("\$"+ subTotalPrice().toString(),
                                style: TextStyle(fontSize: 18,color: Colors.black),)
                            ],
                          ),),
                         // SizedBox(height: 10,),
                          Padding(padding: EdgeInsets.only(right:20,left:20),
                          child: Divider(height: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 5,),
                          Padding(padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery",style: TextStyle(fontSize: 18,color: Colors.black),),
                              Text("\$ 3.50",style: TextStyle(fontSize:18,color: Colors.black),)
                            ],
                          ),),
                          Padding(padding: EdgeInsets.only(right:20,left:20),
                            child: Divider(height: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Padding(padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                              Text("\$"+ totalPrice().toString(),
                              style: TextStyle(fontWeight:FontWeight.bold,
                              fontSize: 18,color: Colors.black),)
                            ],
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=>Invoice()));
                      },
                       child:
                        Container(
                        height: 60,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 135, top: 18),
                        child: Text(
                          'CHECKOUT',
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

totalPrice()
{
  double c;
  c = subTotalPrice() + 3.5;
  return c;
}

subTotalPrice()
{
  int total = 0;
  for(int i = 0;i<cartdata.length;i++)
    {
      int c;
      c = cartdata[i].qty! * cartdata[i].price!.toInt();
      total = total + c;
    }
  return total;
}

total_qua_Price(int a, int b)
{
  int total = 0;
  int c;
  c = a * b;
  total = total + c;
  return c;
}


