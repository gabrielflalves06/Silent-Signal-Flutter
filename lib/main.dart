import 'package:flutter/material.dart';
import 'package:silent_signal/screens/disappering.dart';
import 'package:silent_signal/screens/message.dart';
import 'package:silent_signal/screens/chats_list.dart';
import 'package:silent_signal/screens/register.dart';
import 'package:silent_signal/screens/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/register',
    routes: {
      '/login': (context) => const Login(),
      '/register': (context) => const Register(),
      '/chats_list': (context) => const ChatsList(),
      '/chat': (context) => const Message(),
      '/delete': (context) => const Disappering(),
    },
  ));
}
