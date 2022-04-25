import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //menu lateral
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 87, 53),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Pokemons"),
            subtitle: Text("Minha Pokedex"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/",
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Tipos"),
            subtitle: Text("Tipos de Pokemon"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/type",
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Habilidade"),
            subtitle: Text("Habilidades dos Pokemon"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/ability",
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Movimentos"),
            subtitle: Text("Movimentos dos Pokemon"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/move",
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Item"),
            subtitle: Text("Item dos Pokemon"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/type",
              )
            },
          ),
        ],
      ),
    );
  }
}
