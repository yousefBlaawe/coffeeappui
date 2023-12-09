import 'package:coffeeapp/Layout/coffee/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/Products/products.dart';
import '../../sheared/componante/componanet.dart';
import 'cubit.dart';


class coffee extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context){
        return CubitCoffeeScreen();
      },
      child: BlocConsumer<CubitCoffeeScreen,StateCoffeeScreen>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://w0.peakpx.com/wallpaper/886/72/HD-wallpaper-coffee-black-cup-with-coffee-gray-background-coffee-concepts.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.0,),
                    Icon(Icons.coffee_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(height: 15.0,),
                    Text('Find the best',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Coffee in Town !',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 25.0,),
                          Icon(Icons.coffee,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          SizedBox(width: 10,),
                          Text('FIND TOUR COFFEEE ...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Text('Espreso',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('Red Eye',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('Black Eye',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text(' Tea',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQyZ9IPAyQOvA9MtP0pOps6RBjQBhYbZW77xFy_DN08SQwD-CeDvrcnCtNt-eOdDza2I&usqp=CAU
                            child: Container(
                              width: 200,
                              height: 220.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[800],

                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                      fit: BoxFit.cover,
                                      height: 105,
                                      width: 200,
                                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQyZ9IPAyQOvA9MtP0pOps6RBjQBhYbZW77xFy_DN08SQwD-CeDvrcnCtNt-eOdDza2I&usqp=CAU',

                                      )),
                                  SizedBox(height: 10.0,),
                                  Text('Red Eye',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('With White Milk',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [

                                      Icon(Icons.monetization_on_outlined,
                                        color: Colors.orange,

                                      ),
                                      SizedBox(width: 10.0,),
                                      Text('3.25',
                                        style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),

                            ),
                            onTap: (){
                              navegatorTo(context,prudctesCoffee() );
                            },
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 200,
                            height: 220.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],

                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    fit: BoxFit.cover,
                                    height: 105,
                                    width: 200,
                                    image: NetworkImage('https://images.unsplash.com/photo-1510707577719-ae7c14805e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80',

                                    )),
                                SizedBox(height: 10.0,),
                                Text('Cappuccino',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                    color: Colors.white,

                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('With White Milk',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [

                                    Icon(Icons.monetization_on_outlined,
                                      color: Colors.orange,

                                    ),
                                    SizedBox(width: 10.0,),
                                    Text('4.00',
                                      style: TextStyle(fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 200,
                            height: 220.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],

                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    fit: BoxFit.cover,
                                    height: 105,
                                    width: 200,
                                    image: NetworkImage('https://img.freepik.com/premium-photo/tasty-espresso-served-cup-with-coffee-beans-around-spoon-view-from-dark-background_1220-5755.jpg',

                                    )),
                                SizedBox(height: 10.0,),
                                Text('White Mocha',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                    color: Colors.white,

                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('With White Milk',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [

                                    Icon(Icons.monetization_on_outlined,
                                      color: Colors.orange,

                                    ),
                                    SizedBox(width: 10.0,),
                                    Text('4.00',
                                      style: TextStyle(fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Special for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SingleChildScrollView(

                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[800]
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 5.0,),
                                Container(
                                  height: 80,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: NetworkImage('https://img.freepik.com/premium-photo/cup-hot-steaming-coffee-black-background_1007515-125.jpg',
                                        ),

                                      )
                                  ),
                                ),
                                SizedBox(width: 15,),

                                Text('Five coffee beans you must try !!',
                                  maxLines: 3
                                  ,

                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.orange
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[800]
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 5.0,),
                                Container(
                                  height: 70,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: NetworkImage('https://img.freepik.com/premium-photo/cup-hot-steaming-coffee-black-background_1007515-125.jpg',
                                        ),

                                      )
                                  ),
                                ),
                                SizedBox(width: 15,),

                                Text('Five coffee beans you must try !!',
                                  maxLines: 3
                                  ,

                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.orange
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ),
          );
        },
      ),
    );
  }

}
//https://img.freepik.com/premium-photo/tasty-espresso-served-cup-with-coffee-beans-around-spoon-view-from-dark-background_1220-5755.jpg
//https://images.unsplash.com/photo-1510707577719-ae7c14805e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80
//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaQyZ9IPAyQOvA9MtP0pOps6RBjQBhYbZW77xFy_DN08SQwD-CeDvrcnCtNt-eOdDza2I&usqp=CAU
//https://img.freepik.com/premium-photo/cup-hot-steaming-coffee-black-background_1007515-125.jpg
//https://w0.peakpx.com/wallpaper/886/72/HD-wallpaper-coffee-black-cup-with-coffee-gray-background-coffee-concepts.jpg
// find the best coffee in town !