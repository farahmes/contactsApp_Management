import 'dart:math';

import 'package:contacts_app/model/contact.model.dart';


class ContactsRepository{
  Map<int,Contact> contacts={
    1:Contact(id:1,name:"Saad",profile:"Saad",type: "Student",score:3),
    2:Contact(id:2,name:"Amine",profile:"Adib",type: "Developer",score:8),
    3:Contact(id:3,name:"Simo",profile:"simo",type: "Student",score:5),
    4:Contact(id:4,name:"Yassine",profile:"Yassine",type: "Developer",score:8)
  };

  Future<List<Contact>> allContatcs() async {
    // var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){ //10% d'avoir des erreurs = Probabilite
      return contacts.values.toList();
    }else{
      throw new Exception("Internet Error");
    }
  }
  Future<List<Contact>> contactsByType(String type) async {
    // var future = await Future.delayed(Duration(seconds : 1));
    int rnd = new Random().nextInt(10);
    if(rnd>3){
      return contacts.values.toList().where((element) => element.type == type).toList();
    }else{
      throw new Exception("Internet Error");
    }
  }
}