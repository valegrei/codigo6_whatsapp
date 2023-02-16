import '../models/call_model.dart';
import '../models/chat_model.dart';
import '../models/message_model.dart';
import '../models/status_model.dart';

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

  List<MessageModel> messages = [
    MessageModel(message: "Hola", type: "other", time: "10:30"),
    MessageModel(message: "Hola, Cómo estas?", type: "me", time: "10:31"),
    MessageModel(
        message: "Estás estudiando Flutter?", type: "other", time: "10:32"),
    MessageModel(
        message: "Sí, ahora estoy practicando", type: "me", time: "10:32"),
  ];

  List<StatusModel> sinVer = [
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg",
      name: "Miguel Hernandez",
      time: "1 minute ago",
      visto: false,
    ),
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/2102415/pexels-photo-2102415.jpeg",
      name: "Roxana Maldonado Diaz",
      time: "Yesterday, 10:42 PM",
      visto: false,
    ),
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg",
      name: "Daniel Arias",
      time: "Yesterday, 9:36 PM",
      visto: false,
    ),
  ];

  List<StatusModel> vistos = [
    StatusModel(
      avatar:
      "https://images.pexels.com/photos/360591/pexels-photo-360591.jpeg",
      name: "Alejandro Martinez",
      time: "24 minute ago",
      visto: true,
    ),
    StatusModel(
      avatar:
      "https://images.pexels.com/photos/1181371/pexels-photo-1181371.jpeg",
      name: "Angela Torres Durán",
      time: "Yesterday, 8:42 PM",
      visto: true,
    ),
  ];

  List<CallModel> llamadas = [
    CallModel(
      avatar:
      "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg",
      name: "Miguel Hernandez",
      time: "1 minute ago",
      entrante: true,
      videollamada: true,
    ),
    CallModel(
      avatar:
      "https://images.pexels.com/photos/2102415/pexels-photo-2102415.jpeg",
      name: "Roxana Maldonado Diaz",
      time: "February 2, 10:34 PM",
      entrante: true,
      videollamada: false,
    ),
    CallModel(
      avatar:
      "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg",
      name: "Daniel Arias",
      time: "January 24, 1:36 PM",
      entrante: false,
      videollamada: false,
    ),
    CallModel(
      avatar:
      "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg",
      name: "Miguel Hernandez",
      time: "12/6/22, 11:54 AM",
      entrante: true,
      videollamada: true,
    ),
    CallModel(
      avatar:
      "https://images.pexels.com/photos/2102415/pexels-photo-2102415.jpeg",
      name: "Roxana Maldonado Diaz",
      time: "10/5/22, 8:23 AM",
      entrante: false,
      videollamada: true,
    ),
    CallModel(
      avatar:
      "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg",
      name: "Daniel Arias",
      time: "25/2/22, 2:35 PM",
      entrante: true,
      videollamada: false,
    ),
  ];
}
