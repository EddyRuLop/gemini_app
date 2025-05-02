import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_app/presentation/providers/chat/is_gemini_writing.dart';
import 'package:gemini_app/presentation/providers/users/user_provider.dart';

final messages = <types.Message>[
  // types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola Mundo!'),
  //types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola, ¿cómo estás?'),
  //types.TextMessage(author: geminiUser, id: Uuid().v4(), text: 'Hola Mundo!'),
];

class BasicPromptScreen extends ConsumerWidget {
  const BasicPromptScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final geminiUser = ref.watch(geminiUserProvider);
    final user = ref.watch(userProvider);
    final isGeminiWriting = ref.watch(isGeminiWritingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta Básica'),
      ),
      body: Chat(
        messages: [
          types.TextMessage(author: user, id: "algo...1", text: 'Hola Mundo!'),
          types.TextMessage(
              author: user, id: "algo...2", text: 'Hola, ¿cómo estás?'),
          types.TextMessage(author: user, id: "algo...1", text: 'Hola Mundo!'),
        ],
        onSendPressed: (types.PartialText partialText) {
          print("mensaje: ${partialText.text}");
        },
        user: user,
        theme: DarkChatTheme(),
        showUserNames: true,

        //showUserAvatars: true,

        typingIndicatorOptions: TypingIndicatorOptions(
          typingUsers: isGeminiWriting ? [geminiUser] : [],
          customTypingWidget: const Center(
            child: Text("Gemini está pensando..."),
          ),
        ),
      ),
    );
  }
}
