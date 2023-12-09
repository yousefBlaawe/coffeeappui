import 'package:coffeeapp/sheared/Network/local/cach_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../sheared/componante/componanet.dart';
import '../Login_Screen/login_screen.dart';



class modleItems
{
  final String image;
  final String Text1;
  final String Text2;

  modleItems({required this.image,required this.Text1,required this.Text2});
}
class onpordaringCoffee extends StatefulWidget
{
  @override
  State<onpordaringCoffee> createState() => _onpordaringCoffeeState();
}

class _onpordaringCoffeeState extends State<onpordaringCoffee> {
  List<modleItems> listmodle=[
    modleItems(image: 'https://images.unsplash.com/photo-1613158556069-e7d8eae76214?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y29mZmVlJTIwYmxhY2t8ZW58MHx8MHx8fDA%3D', Text1: 'What do you Know !', Text2: '"Coffee is a language in itself." '),
    modleItems(image: 'https://t3.ftcdn.net/jpg/03/28/14/78/360_F_328147880_8L3ku1gBMK1nlzb4A6uUHKC6T9ZT4MX3.jpg', Text1: 'What do you Know ! ', Text2: '"I have measured out my life with coffee spoons."'),
    modleItems(image: 'https://st2.depositphotos.com/1177973/9073/i/450/depositphotos_90736008-stock-photo-cup-of-coffee-and-coffee.jpg', Text1: 'What do you Know !', Text2: '"I have measured out my life with coffee spoons."')
  ];
  void submit ()
  {
    cachHelper.SaveData(key: 'onpordaring', val: true).
    then((value) {
      if(value!=null)
      {
        setState(() {
          navegatorTo(context, loginCoffee());
        });

      }

    });
  }
  var controller =PageController();

  bool islast=false;

  IconData IconForButton=Icons.arrow_forward_ios;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (BuildContext context, int index) {
                return buldeitmes(listmodle[index]);
              },
              controller: controller,
              reverse: false,
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              onPageChanged: (index){
                if(index == listmodle.length-1)
                {
                  setState(() {
                    islast=true;
                    IconForButton=Icons.coffee;
                  });
                }
                else
                {
                  setState(() {
                    islast=false;
                    IconForButton=Icons.arrow_forward_ios;
                  });
                }
              },

            ),
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey,
                    paintStyle: PaintingStyle.fill,

                  ),
                  count: listmodle.length,


                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(islast)
          {
            submit();
          }
          else
          {
            controller.nextPage(
                duration:Duration(
                  milliseconds: 700,
                ) ,
                curve: Curves.fastEaseInToSlowEaseOut);

          }
        },
        child: Icon(
          IconForButton,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget buldeitmes (modleItems modle)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('${modle.image}'),
                fit: BoxFit.cover,
              )
          ),
        ),
        SizedBox(height: 30.0,),
        Padding(
          padding: EdgeInsetsDirectional.all(10),
          child: Text('${modle.Text1}',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              )
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsetsDirectional.all(10),
          child: Text('${modle.Text2}',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: 'NewFontlogin.ttf',
            )
            ,

          ),
        )
      ],
    );
  }
}