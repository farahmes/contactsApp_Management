
import 'package:contacts_app/enums/enums.dart';
import 'package:contacts_app/model/contact.model.dart';

import 'contact.actions.dart';


class ContactsState{
  List<Contact> contacts;
  RequestState requestState;
  String errorMessage;
  ContactsEvent currentEvent;
  ContactsState({this.contacts,this.requestState,this.errorMessage,this.currentEvent});
}