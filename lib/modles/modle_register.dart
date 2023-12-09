class registerModle
{
  late bool status;
  late String message;
  late DataModle data;
  registerModle.FromJason({required Map<String,dynamic>Jason})
  {
    status=Jason['status'];
    message=Jason['message'];
    data=DataModle.FromJason(Jason: Jason['data']);
  }
}
class DataModle
{
  late String name;
  late String phone;
  late String email;
  late int id;
  late String image;
  late String token;
  DataModle.FromJason({required var Jason})
  {
    if(Jason==null)
    {
      name="";
      phone='';
      email='';
      id=0;
      image='';
      token='';
    }
    else
    {
      name=Jason['name'];
      phone=Jason['phone'];
      email=Jason['email'];
      id=Jason['id'];
      image=Jason['image'];
      token=Jason['token'];
    }
  }
}
// "name": "yousefblaawe",
//         "phone": "0795478533",
//         "email": "yousefblaawe12456@gmail.com",
//         "id": 60436,
//         "image": "https://student.valuxapps.com/storage/uploads/users/VjNpPlZjzR_1700241488.jpeg",
//         "token": "6AEQFZH5UFyo8UnXTMPwnvWhkp2AQ44es0b2qBR6a6CmBpT64fsfMmJzqL5diDeICQYI0o"