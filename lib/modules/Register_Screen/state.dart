

import '../../modles/modle_register.dart';


abstract class registerState {}
class initailState extends registerState{}
class LodingSignState extends registerState{}
class SucssesSignState extends registerState{
  final registerModle modle;
  SucssesSignState(this.modle);
}
class ErrorSignState extends registerState{}