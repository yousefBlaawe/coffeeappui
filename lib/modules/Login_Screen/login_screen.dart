import 'package:coffeeapp/modules/Login_Screen/state.dart';
import 'package:coffeeapp/sheared/Network/local/cach_helper.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Layout/coffee/coffee_app.dart';
import '../../sheared/componante/componanet.dart';
import '../Register_Screen/register.dart';
import 'cubit_login.dart';


class loginCoffee extends StatelessWidget
{
  var Emailcontroller =TextEditingController();
  var PasswordControler =TextEditingController();
  var Key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return CubitCoffee();
        },
        child: BlocConsumer<CubitCoffee,stateCoffee>(
          listener: (context,state)
          {
            if(state is loginSucssesState)
            {
              if(state.modle.status)
              {
                // defultToast(message: state.modle.message, state: ToastState.SUCCESS);
                cachHelper.SaveData(
                    key: 'token',
                    val: state.modle.data.token).then((value) {
                  NavegatorAndFinsh(context, coffee());
                });
              }
              else
              {
                print(state.modle.message);
                // defultToast(message: state.modle.message, state: ToastState.ERROR);
              }
            }
          },
          builder: (context,state){
            return Scaffold(

              body: Container(
                height: double.infinity,
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Form(
                    key: Key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 275,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(

                                  bottom: Radius.circular(200)

                              ),
                              image: DecorationImage(
                                image: NetworkImage('https://c0.wallpaperflare.com/preview/561/151/642/coffee-cup-coffee-beans-wooden-table-from-above.jpg',
                                ),

                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 20),
                          child: Text('Great ideas start with !',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                                fontSize: 20
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 30),
                          child: Text('COFFEE,,',
                            style: TextStyle(
                              fontFamily: 'NewFontlogin.ttf',
                              color: Colors.white,
                              fontSize: 30,

                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[800],

                            ),
                            child: defultTextFromFild(
                              IconColorpreAndsuf: Colors.black,
                              outlineColor: Colors.black,
                              Controller: Emailcontroller,
                              KeypordType: TextInputType.text,
                              valid: (String? val) {
                                if(val!.isEmpty)
                                {
                                  return 'Email con\'t be Empty';
                                }
                                else
                                {
                                  return null ;
                                }
                              },
                              ICON: Icons.email_outlined,
                              lable: 'Email',


                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 20,
                              end: 20),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[800],

                            ),
                            child: defultTextFromFild(
                              obscore: CubitCoffee.get(context).obs,
                              IconB:  IconButton(

                                  onPressed:CubitCoffee.get(context).obscor,
                                  icon: Icon(CubitCoffee.get(context).iconofsufex)),
                              IconColorpreAndsuf: Colors.black,
                              outlineColor: Colors.black,
                              Controller: PasswordControler,
                              KeypordType: TextInputType.text,
                              valid: (String? val) {
                                if(val!.isEmpty)
                                {
                                  return 'Password con\'t be Empty';
                                }
                                else
                                {
                                  return null ;
                                }
                              },
                              ICON: Icons.lock_open,
                              lable: 'Password',


                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ConditionalBuilder(
                            condition: state is! loginLodingState,
                            builder: (context){
                              return Center(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.all(20),
                                  child: defultButton(
                                    onpressd: (){
                                      if(Key.currentState!.validate())
                                      {
                                        CubitCoffee.get(context).LoginCoffeeMethod(
                                            Email: Emailcontroller.text,
                                            Password: PasswordControler.text);
                                      }
                                    },
                                    text:'LOGIN',
                                    Textcolor: Colors.black,
                                    backgrundColor: Colors.white,
                                    radus: 25,
                                    Width: 200,


                                  ),
                                ),
                              );
                            } ,
                            fallback: (context){
                              return Center(
                                child: Icon(Icons.coffee_maker_outlined,
                                  size: 45,
                                  color: Colors.grey[800],
                                ),
                              );
                            }),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsetsDirectional.all(30),
                          child: Row(
                            children: [
                              Text('If you don\'t have an Account ? ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 3,),
                              defultTextButton(onpress: (){
                                navegatorTo(context, registerCoffee());
                              }, text: 'Register',
                                colorofText: Colors.white,
                                size: 20,

                              )

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }

}