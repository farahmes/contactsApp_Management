
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/messages.model.dart';

abstract class MessageEvent<T>{
  T payload;
  MessageEvent(this.payload);
}

class MessagesByContactEvent extends MessageEvent<Contact>{
  MessagesByContactEvent(Contact payload) : super(payload);
}


class AddMessagesEvent extends MessageEvent<Message>{
  AddMessagesEvent(Message payload) : super(payload);
}
class SelectMessagesEvent extends MessageEvent<Message>{
  SelectMessagesEvent(Message payload) : super(payload);
}

class DeleteSelectedMessagesEvent extends MessageEvent<Object>{
  DeleteSelectedMessagesEvent() : super(null);
}