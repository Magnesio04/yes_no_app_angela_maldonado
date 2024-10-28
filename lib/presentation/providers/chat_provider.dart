// importM para importar material
import 'package:flutter/material.dart';
import 'package:yes_no_app_angela_maldonado/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messageList =[
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Lloras porque reprobaste tópicos?', fromWho: FromWho.me)
  ];
  // Controlador para manejar el control del scroll
  final ScrollController chatScrollController=ScrollController();

  // Enviar un mensaje
Future<void> sendMessage(String text) async {

  // El mensaje que yo voy a escribir, siempre va a ser "me" pq yo lo envío
  final newMessage =Message(text: 'text', fromWho: FromWho.me);

  // Agrega un nuemo mensaje a la lista
  messageList.add(newMessage);

  // Notifica si algo de provier cambió para que se guarde el estado
  notifyListeners();

  // Mueve el scroll
  moveScrollToBottom();

}

  // Mover el scroll al último mensaje
  Future<void> moveScrollToBottom() async{

  // Se verá cuando se envien mensajes cortos y rápidos
  await Future.delayed(const Duration(seconds: 1)); //la duración del tiempo de respuesta

   // Offset: posición de la animación
   // maxScrollExtent determina lo maximo que el scroll puede dar
  chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, 

  // Duración de la animación
  duration: const Duration(milliseconds: 300), 

  // Rebote al final de la animación
  curve: Curves.easeOut);
      }

}