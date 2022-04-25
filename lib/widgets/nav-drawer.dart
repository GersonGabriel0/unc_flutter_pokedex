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
            title: const Text(
              'Pokemons',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Tipos',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/type",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Habilidades',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/ability",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Movimentos',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/move",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Items',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/item",
              )
            },
          ),
        ],
      ),
    );
  }
}
