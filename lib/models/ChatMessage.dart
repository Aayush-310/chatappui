//enums for message types and status as they are fixed
enum MessageType { text, audio, video, image, file }

enum Status { sent, notSent, viewed, notViewed } //sent can be removed
//delivered is yet to implement

class ChatMessages {
  final MessageType typeOfMessage;
  final Status messageStatus;
  final String text;
  final bool isSender;

  ChatMessages({
    this.text = "",
    required this.typeOfMessage,
    required this.messageStatus,
    required this.isSender,
  });
}

List dummyChatMessages = [
  ChatMessages(
    typeOfMessage: MessageType.text,
    messageStatus: Status.sent,
    isSender: true,
  ),
  ChatMessages(
      typeOfMessage: MessageType.file,
      messageStatus: Status.viewed,
      isSender: true),
  ChatMessages(
      typeOfMessage: MessageType.image,
      messageStatus: Status.notSent,
      isSender: false),
  ChatMessages(
      typeOfMessage: MessageType.audio,
      messageStatus: Status.notSent,
      isSender: false),
  ChatMessages(
      typeOfMessage: MessageType.video,
      messageStatus: Status.sent,
      isSender: true),
  ChatMessages(
      typeOfMessage: MessageType.video,
      messageStatus: Status.notSent,
      isSender: true),
  ChatMessages(
      typeOfMessage: MessageType.video,
      messageStatus: Status.sent,
      isSender: true)
];
