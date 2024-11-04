import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_angela_maldonado/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_angela_maldonado/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_angela_maldonado/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_app_angela_maldonado/domain/entities/message.dart';
import 'package:yes_no_app_angela_maldonado/presentation/providers/chat_provider.dart';

//backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a0/Taylor_Swift_at_the_2024_Golden_Globes_%281%29.png'),

class ChatScreen extends StatelessWidget {

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a0/Taylor_Swift_at_the_2024_Golden_Globes_%281%29.png'),
          ),
        ),
        title: const Text("♥️ Tay ♥️"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    print('Cantidad de mensajes: ${chatProvider.messageList.length}');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10 ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollControler,
                itemCount: chatProvider.messageList.length,
                itemBuilder:(context, index) {
                  final message = chatProvider.messageList[index];

                  return ( message.fromWho == FromWho.him)
                    ? HerMessageBubble( message: message)
                    : MyMessageBubble( message: message,);
              })),

            //Caja de texto de mensajes
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}