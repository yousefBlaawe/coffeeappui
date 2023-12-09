import 'package:coffeeapp/modules/Register_Screen/state.dart';
import 'package:coffeeapp/sheared/Network/local/cach_helper.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Layout/coffee/coffee_app.dart';
import '../../sheared/componante/componanet.dart';
import 'cubit.dart';

class registerCoffee extends StatelessWidget
{
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
  var EmailController=TextEditingController();
  var PasswordController=TextEditingController();
  var Key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return Cubitregister();
      },
      child: BlocConsumer<Cubitregister,registerState>
        (
        listener: (context,state){
          if(state is SucssesSignState)
          {
            if(state.modle.status)
            {
              // defultToast(message: state.modle.message, state: ToastState.SUCCESS);
              cachHelper.SaveData(
                key: 'token',
                val: state.modle.data.token,).then((value) {
                navegatorTo(context,coffee() );
              }).catchError((Error){
                print(Error.toString());
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
                    children: [
                      Container(
                        height: 250,
                        width:double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(250),
                          ),
                          image: DecorationImage(
                            image: NetworkImage('https://c1.wallpaperflare.com/preview/778/276/997/coffee-beans-caffeine-roasted.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
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
                            Controller: nameController,
                            KeypordType: TextInputType.text,
                            valid: (String? val) {
                              if(val!.isEmpty)
                              {
                                return 'Name con\'t be Empty';
                              }
                              else
                              {
                                return null ;
                              }
                            },
                            ICON: Icons.account_circle,
                            lable: 'Name',


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
                            Controller: phoneController,
                            KeypordType: TextInputType.number,
                            valid: (String? val) {
                              if(val!.isEmpty)
                              {
                                return 'Phone con\'t be Empty';
                              }
                              else
                              {
                                return null ;
                              }
                            },
                            ICON: Icons.phone,
                            lable: 'Phone',


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
                            Controller: EmailController,
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
                            Controller: PasswordController,
                            KeypordType: TextInputType.text,
                            obscore: false,

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
                          condition: state is! LodingSignState,
                          builder: (context){
                            return Center(
                              child: Padding(
                                padding: EdgeInsetsDirectional.all(20),
                                child: defultButton(
                                  onpressd: (){
                                    if(Key.currentState!.validate())
                                    {
                                      Cubitregister.get(context).SignIn(
                                          name: nameController.text,
                                          phone: phoneController.text,
                                          Email: EmailController.text,
                                          Passwod: PasswordController.text);
                                    }
                                  },
                                  text:'Sign in',
                                  Textcolor: Colors.black,
                                  backgrundColor: Colors.white,
                                  radus: 25,
                                  Width: 200,


                                ),
                              ),
                            );
                          },
                          fallback: (context){
                            return Icon(Icons.coffee_maker_outlined,
                              color: Colors.grey[800],
                            );
                          }),

                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );

  }

}
//"name": "yousefblaawe",
// 	"phone": "0795478533",
// 	"email": "yousefblaawe12456@gmail.com",
// 	"password": "123456",