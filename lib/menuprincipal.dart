import 'package:aula_3_tela_login_2/cadcartoes.dart';
import 'package:aula_3_tela_login_2/cadsenhas.dart';
import 'package:aula_3_tela_login_2/geradorsenha.dart';
import 'package:aula_3_tela_login_2/listasenha.dart';
import 'package:aula_3_tela_login_2/perfilusuario.dart';
import 'package:flutter/material.dart';

class menuprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Sou eu"),
                  accountEmail: Text("Sou eu@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'),
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Favoritos"),
                    subtitle: Text("Meus favoritos ..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      debugPrint('toquei no drawer');
                    }),
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Perfil"),
                    subtitle: Text("Perfil do usuário..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return perfilUsuario();
                      }));
                    }),
                ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text("Cartões"),
                    subtitle: Text("Cartões do usuário..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return cadcartoes();
                      }));
                    }),
                    ListTile(
                    leading: Icon(Icons.password_rounded),
                    title: Text("Gerador de Senhas"),
                    subtitle: Text("Gerador de Senhas..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return geradorSenha();
                      }));
                    }),
                    ListTile(
                    leading: Icon(Icons.lock),
                    title: Text("Cadastro de Senhas"),
                    subtitle: Text("Cadastro de Senhas..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return cadsenhas();
                      }));
                    }),
                     ListTile(
                    leading: Icon(Icons.list_rounded),
                    title: Text("Lista de Senhas"),
                    subtitle: Text("Lista de Senhas..."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return listaSenhas();
                      }));
                    }),
              ],
            ),
          ),
          appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('Menu Principal')),
          body: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: Text('Voltar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Minha conta",
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.password),
                  label: "Senhas",
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card),
                  label: "Cartões",
                  backgroundColor: Colors.teal),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favoritos",
                  backgroundColor: Colors.teal),
            ],
          )),
    );
  }
}
