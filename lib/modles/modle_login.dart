

class ModleLoginCoffee
{
  bool status=false;
  String message="";
  var data=null;

  ModleLoginCoffee.FromJason({required Map<String,dynamic>?Jason})
  {
    status=Jason?['status'];
    message=Jason?['message'];
    data=Datamodle.FromJason(Jason: Jason?['data']);
  }

}
class Datamodle
{
  int id =0;
  String name='';
  String email='';
  String phone='';
  String image='';
  int points=0;
  int cradit=0;
  String token='';

  Datamodle.FromJason({required var Jason})
  {
    if(Jason==null)
    {
      id=0;
      name='';
      email='';
      phone='';
      image='';
      points=0;
      cradit=0;
      token='';

    }
    else
    {
      id=Jason['id'];
      name=Jason['name'];
      email=Jason['email'];
      phone=Jason['phone'];
      image=Jason['image'];
      points=Jason['points'];
      cradit=Jason['credit'];
      token=Jason['token'];
    }
  }

}
// "id": 60431,
//         "name": "yousefblaawe",
//         "email": "yousefblaawe2011@gmail.com",
//         "phone": "0795478504",
//         "image": "https://student.valuxapps.com/storage/uploads/users/LBiOMDYgO0_1700236832.jpeg",
//         "points": 0,
//         "credit": 0,
//         "token": "0wELMlxrxYU8pFDxTRaLA8LkrEeUvZSvrUINmsvladaSaqmmopkCMKowOZpCHrF78035az"