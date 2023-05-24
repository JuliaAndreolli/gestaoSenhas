import 'package:aula_3_tela_login_2/cadusuario.dart';
import 'package:aula_3_tela_login_2/menuprincipal.dart';
import 'package:aula_3_tela_login_2/recuperarsenha.dart';
import 'package:flutter/material.dart';
import 'menuprincipal.dart';
/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: _Login(),
      ),
    );
  }
}

class _Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Tela de Login app',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30),
            )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Digite os dados',
                style: TextStyle(fontSize: 20),
              )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'e-mail',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Esqueci a senha');
                },
                child: const Text('Esqeuci a senha',),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      print('OK');
                    },
                  )
                ),
                Row(
                  children: <Widget> [
                    const Text('Não possui conta?'),
                    TextButton(
                      child: const Text(
                      'Cadastre aqui',
                      style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print('Cadastro aqui');
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ));
  }
}*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: _Login(),
      ),
    );
  }
}


class _Login extends StatefulWidget{
  const _Login({Key? key}) : super(key: key);

  @override
  _loginState createState(){
    return _loginState();
  }
}


class _loginState extends State<_Login> {
  String email ='';
  String pass ='';

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Tela de Login app',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Digite os dados',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'e-mail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return recuperarsenha();
                }));
              },
              child: const Text(
                'Esqueci a senha',
              ),
            ),
            Container(
                 height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    if(validarAcesso(emailController.text, senhaController.text)){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return menuprincipal();
                    }));
                    }
                    
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Não possui conta?'),
                TextButton(
                  child: const Text(
                    'Cadastre aqui',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context){
                      return cadusuario();
                    }));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

validarAcesso(String email, String senha){
  String _email = "admin@admin";
  String _senha = "123";

  if(email == _email && senha == _senha){
    return true;
  }

  return false;
}
