import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Message> {
  List<String> mensagens = [];
  bool digitando = false;
  String texto = '';
  
  void sendMessage() {
    if (texto.isNotEmpty) {
      setState(() {
        mensagens.add(texto);
        texto = '';
        digitando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERFIL'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: mensagens.length,
              itemBuilder: (context, index) {
                return MessageBubble(
                  message: mensagens[index],
                  isMyMessage: false,
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Mensagem',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    onChanged: (text) {
                      setState(() {
                        texto = text;
                        digitando = text.isNotEmpty;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: sendMessage,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1479C3) ,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      digitando ? Icons.send : Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMyMessage;

  const MessageBubble({super.key, required this.message, required this.isMyMessage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment:
            isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isMyMessage ? const Color(0xFF2892DF) : const Color(0xFFD8EAFB),
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            padding: const EdgeInsets.all(10),
            child: Text(
              message,
              style: const TextStyle(fontSize: 16),
            ),  
          ),
        ],
      ),
    );
  }
}
