import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        '/Register.png',
                        width: 450,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xFF004DFF),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFB3C0DE),
                          hintText: 'Nome do usuário',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFB3C0DE),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFB3C0DE),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFB3C0DE),
                          hintText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                          child: Row(children: <Widget>[
                        Checkbox(
                            value: false,
                            onChanged: (bool? value) {
                              print('Checkbox: $value');
                            }),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Mensagem'),
                                  content: SingleChildScrollView(
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxHeight:
                                            MediaQuery.of(context).size.height *
                                                0.7,
                                      ),
                                      child: SingleChildScrollView(
                                        child: Container(
                                          padding: const EdgeInsets.all(16.0),
                                          child: const Text(
                                            'Termos de Uso e Política de Privacidade\n\nBem-vindo ao Silent Signal!\n\nEstes Termos de Uso e Política de Privacidade regem o uso do aplicativo Silent Signal, fornecido pela Silent Signal.\n\nAo utilizar nosso aplicativo, você concorda com estes termos e nossa política de privacidade.\n\n1. Coleta de Informações\nColetamos informações que você fornece voluntariamente ao se cadastrar no aplicativo, como nome, endereço de e-mail e outras informações necessárias para criar sua conta.\n\n2. Uso das Informações\nUtilizamos suas informações para fornecer os serviços do aplicativo, personalizar sua experiência, melhorar nossos serviços e enviar comunicações relacionadas ao aplicativo.\n\n3. Privacidade e Segurança\nPriorizamos a privacidade e a segurança de suas informações. Implementamos medidas técnicas e organizacionais para proteger seus dados contra acesso não autorizado.\n\n4. Compartilhamento de Informações\nNão compartilhamos suas informações pessoais com terceiros sem seu consentimento, exceto quando necessário para fornecer os serviços do aplicativo ou quando exigido por lei.\n\n5. Cadastro sem Número de Telefone\nVocê pode se cadastrar no aplicativo sem usar um número de telefone, fornecendo outras informações de contato, como e-mail.\n\n6. Direitos dos Usuários\nVocê tem o direito de acessar, corrigir e excluir suas informações pessoais. Para exercer esses direitos, entre em contato conosco através dos meios fornecidos no aplicativo.\n\n7. Alterações na Política de Privacidade\nReservamo-nos o direito de atualizar nossa política de privacidade periodicamente. Notificaremos os usuários sobre mudanças significativas através do aplicativo.\n\n8. Contato\nSe tiver dúvidas sobre nossos termos de uso ou política de privacidade, entre em contato conosco através do e-mail Abobra@gmail.com.\n\nAo utilizar nosso aplicativo, você concorda com estes termos e nossa política de privacidade.',
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Fechar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Exibir mensagem'),
                        ),
                      ]))
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(300, 50)),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
