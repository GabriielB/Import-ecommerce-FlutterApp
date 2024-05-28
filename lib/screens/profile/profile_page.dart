import 'package:al_imports/providers/loggedInUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loggedInUser = Provider.of<LoggedInUser>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Editar perfil",
            style: TextStyle(
                color: Color.fromRGBO(51, 102, 102, 1),
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Username: ${loggedInUser.username}",
            style: const TextStyle(
                color: Color.fromRGBO(51, 102, 102, 1),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 3,
                                color: Color.fromRGBO(51, 102, 102, 0.7)),
                            borderRadius: BorderRadius.circular(40))),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Novo Username',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String newUsername = _usernameController.text;
                      loggedInUser.setUsername(newUsername);
                      _usernameController.clear();
                    },
                    child: const Text("Alterar username"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
