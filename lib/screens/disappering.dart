import 'package:flutter/material.dart';

class Disappering extends StatelessWidget {
  const Disappering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: const Text("Disappearing Messages"),
            backgroundColor: Colors.blue,
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/register");
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "/Teste.png",
                    width: 350,
                    height: 300,
/*                     fit: BoxFit.contain, */
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Mensagens que desaparecem, são mensagens projetadas para serem removidas automaticamente após um determinado período de tempo, geralmente definido pelo remetente ou pelo sistema.",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Time",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 01, fixedSize: const Size(200, 20)),
                    onPressed: () {},
                    child: const Text(
                      "24 Horas",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 01, fixedSize: const Size(200, 20)),
                    onPressed: () {},
                    child: const Text(
                      "10 Horas",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 01, fixedSize: const Size(200, 20)),
                    onPressed: () {},
                    child: const Text(
                      "1 Horas",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chats_list');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(200, 50)),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
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
