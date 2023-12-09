

import 'package:bloc/bloc.dart';
import 'package:coffeeapp/modules/Login_Screen/state.dart';
import 'package:coffeeapp/sheared/Network/remode/diohelper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modles/modle_login.dart';
import '../../sheared/Network/remode/endpoints.dart';

class CubitCoffee extends Cubit<stateCoffee>
{
  CubitCoffee():super(initstate());
  static CubitCoffee get (context)
  {
    return BlocProvider.of(context);
  }
  bool obs =false;
  IconData iconofsufex=Icons.remove_red_eye;
  late ModleLoginCoffee modle ;
  void obscor()
  {
    obs=!obs;
    if(obs)
    {
      iconofsufex=Icons.remove_red_eye_outlined;
    }
    else
    {
      iconofsufex=Icons.remove_red_eye;
    }
    emit(changeobsState());
  }

  void LoginCoffeeMethod(
      {
        required String Email,
        required String Password,})
  {
    emit(loginLodingState());
    dioHelper.postData(
        path: Login,
        data: {
          'email':Email,
          'password':Password,
        }).then((value) {
      print(value.toString());
      modle=ModleLoginCoffee.FromJason(Jason: value?.data);
      emit(loginSucssesState(modle));
    }).catchError((error){
      print(error.toString());
      emit(loginErrorSate());
    });
  }


}