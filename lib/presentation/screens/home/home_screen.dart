import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Google Gemini'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.pink,
                child: Icon(Icons.chat),
              ),
              title: const Text('Basic Prompt'),
              subtitle: const Text('Basic Prompt'),
              onTap: () => context.push('/basic-prompt'),
            )
          ],
        ));
  }
}
