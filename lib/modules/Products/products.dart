import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Layout/coffee/coffee_app.dart';
import '../../sheared/componante/componanet.dart';

class prudctesCoffee extends StatefulWidget
{
  @override
  State<prudctesCoffee> createState() => _prudctesCoffeeState();
}

class _prudctesCoffeeState extends State<prudctesCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQyZ9IPAyQOvA9MtP0pOps6RBjQBhYbZW77xFy_DN08SQwD-CeDvrcnCtNt-eOdDza2I&usqp=CAU'),
                  )
              ),
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsetsDirectional.all(25),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black54

                          ),
                          child: Center(
                            child: IconButton(onPressed: (){
                              setState(() {
                                navegatorTo(context, coffee());
                              });
                            }, icon: Icon(Icons.arrow_back_ios_new,
                              size: 25,
                              color: Colors.orange,
                            )),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black54

                          ),
                          child: Center(
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken,
                              size: 25,
                              color: Colors.orange,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top:Radius.circular(50)),
                          color: Colors.black
                      ),
                      child: Padding(

                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('Espresso',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('With chocolate',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.grey,

                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                      color: Colors.orange,
                                      size:30,
                                    ),
                                    SizedBox(width: 2,),
                                    Text('4.5',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black,

                                      ),
                                      height: 40,
                                      width: 40,
                                      child: IconButton( onPressed: () {  }, icon: Icon(Icons.coffee_outlined,
                                        color: Colors.orange,
                                        size: 40,),
                                      ),

                                    ),
                                    SizedBox(width: 20,),
                                    Container(

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black,

                                      ),
                                      height: 40,
                                      width: 40,
                                      child: IconButton(onPressed: (){},
                                        icon: Icon(Icons.water_drop_outlined,
                                          color: Colors.orange,
                                          size: 40,
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Small Roasted',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                      fontSize: 20
                                  ),

                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
                    color: Colors.black
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,
                      top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                          fontFamily: 'NewFontlogin.ttf',
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('A cappuccino is the perfect of espresso,',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 2,),
                      Text('steamed milk. This coffee is all about the structure.',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Size',
                        style: TextStyle(
                            fontFamily: 'NewFontlogin.ttf',
                            fontSize: 30,
                            color: Colors.orange
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 90,
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],
                            )),
                            child: Center(
                              child: Text('S',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'NewFontlogin.ttf',
                                    color: Colors.orange
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 90,
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],
                            )),
                            child: Center(
                              child: Text('M',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'NewFontlogin.ttf',
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 90,
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],
                            )),
                            child: Center(
                              child: Text('L',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'NewFontlogin.ttf',
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,
                            top: 10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('Price',
                                  style: TextStyle(
                                      fontFamily: 'NewFontlogin.ttf',
                                      fontSize: 25,
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.monetization_on_outlined,
                                        color: Colors.orange,
                                        size: 30,
                                      ),
                                      SizedBox(width: 10,),
                                      Text('3.25',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,

                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ),
            ),
          ],
        ),
      ),
    );
  }
}