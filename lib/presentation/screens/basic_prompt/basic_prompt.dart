import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

final user = types.User(
  id: 'user-id-abc',
  firstName: 'Eduardo',
  lastName: 'Ruiz',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgpnmY-O9iz09Jka-vGvK2Lv-U-pL3H18CfA&s',
);

final geminiUser = types.User(
  id: 'gemini-id',
  firstName: 'Gemini',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgpnmY-O9iz09Jka-vGvK2Lv-U-pL3H18CfA&s',
);

final messages = <types.Message>[
  types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola Mundo!'),
  types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola, ¿cómo estás?'),
  types.TextMessage(author: geminiUser, id: Uuid().v4(), text: 'Hola Mundo!'),
];

class BasicPromptScreen extends StatelessWidget {
  const BasicPromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta Básica'),
      ),
      body: Chat(
        messages: messages,
        onSendPressed: (types.PartialText partialText) {
          print("mensaje: ${partialText.text}");
        },
        user: user,
        theme: DarkChatTheme(),
        showUserNames: true,
        showUserAvatars: true,
        typingIndicatorOptions: TypingIndicatorOptions(
          //typingUsers: [geminiUser], //TODO
          customTypingWidget: const Center(
            child: Text("Gemini está pensando..."),
          ),
        ),
      ),
    );
  }
}
