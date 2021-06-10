import 'dart:math';

import 'package:contacts_app/model/messages.model.dart';


class MessageRepo{
  int messageCount = 4;
  Map<int,Message> messages = {
    1 : Message(id: 1,contactID : 1,date: DateTime.now(),content: 'Hello',type: 'sent',selected: false),
    2 : Message(id: 2,contactID : 1,date: DateTime.now(),content: 'Hello Saad',type: 'received',selected: false),
    3 : Message(id: 5,contactID : 2,date: DateTime.now(),content: 'Hello Amine',type: 'received',selected: false),
    4 : Message(id: 6,contactID : 2,date: DateTime.now(),content: 'Hello ',type: 'sent',selected: false),
  };

  MessageRepo(){
   this.messageCount=messages.length;
  }
  Future allMessages() async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      return messages.values.toList();
    }
    else{
      throw new Exception('Internet Error');
    }
  }

  Future<List<Message>> messageByContact(int contactID) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      return messages.values.toList().where((element) => element.contactID==contactID).toList();
    }
    else{
      throw new Exception('Internet Error');
    }
  }

  Future<Message> addNewMessage(Message message) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      message.id=++messageCount;
      messages[message.id]=message;
      return message;
    }
    else{
      throw new Exception('Internet Error');
    }
  }


  Future<void> deleteMessage(Message message) async {
    // var future = await Future.delayed(Duration(seconds: 1));
    int rnd = new Random().nextInt(10);
    if(rnd>1){
      messages.remove(message.id);
    }
    else{
      throw new Exception('Internet Error');
    }
  }
}