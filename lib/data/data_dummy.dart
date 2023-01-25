import 'package:codigo6_whatsapp/models/chat_model.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg",
      name: "Daniel Arias",
      message: "Hola como estas?",
      time: "14:23",
      date: "12/02",
      isTyping: true,
      countMessage: 4,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/2102415/pexels-photo-2102415.jpeg",
      name: "Roxana Maldonado Diaz",
      message: "Hola como estas?",
      time: "11:23",
      date: "31/02",
      isTyping: false,
      countMessage: 10,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/1181371/pexels-photo-1181371.jpeg",
      name: "Angela Torres Durán",
      message: "Ya he enviado lo solicitado",
      time: "05:23",
      date: "20/02",
      isTyping: false,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
      "https://images.pexels.com/photos/360591/pexels-photo-360591.jpeg",
      name: "Alejandro Martinez",
      message: "Gracias por el encargo",
      time: "15:29",
      date: "21/02",
      isTyping: true,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
      "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg",
      name: "Miguel Hernandez",
      message: "A las 5:00 pm nos reunimos para ver el proyecto",
      time: "20:15",
      date: "11/02",
      isTyping: false,
      countMessage: 2,
    ),
  ];
}
