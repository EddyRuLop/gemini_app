import 'package:gemini_app/presentation/screens/basic_prompt/basic_prompt.dart';
import 'package:gemini_app/presentation/screens/basic_prompt/chat_context_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:gemini_app/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/basic-prompt',
      builder: (context, state) => const BasicPromptScreen(),
    ),
    GoRoute(
      path: '/history-chat',
      builder: (context, state) => const ChatContextScreen(),
    ),
  ],
);
