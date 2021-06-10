import 'package:contacts_app/bloc/Messages/messages.actions.dart';
import 'package:contacts_app/enums/enums.dart';
import 'package:contacts_app/model/messages.model.dart';

class MessagesState {
  RequestState requestState;
  List<Message> messages;
  String msgErr;
  MessageEvent currentMsgEvent;
  List<Message> selectedMessages;

  MessagesState(
      {this.requestState,
      this.messages,
      this.msgErr,
      this.currentMsgEvent,
      this.selectedMessages});

  MessagesState.initialState()
      : requestState = RequestState.NONE,
        messages = [],
        msgErr = "",
        currentMsgEvent = null,
        selectedMessages = [];
}
