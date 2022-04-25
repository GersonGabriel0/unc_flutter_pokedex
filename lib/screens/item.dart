// importações Geral
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item/pokemon_item_list.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  State<HomeItem> createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  List<Item> item = List.empty();

  @override
  void initState() {
    super.initState();
    getItemFromPokeApi();
  }

  void getItemFromPokeApi() async {
    PokeAPI.getItem().then((response) {
      // transformando os dados recebidos para o formato List
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        item = data.asMap().entries.map<Item>((element) {
          element.value['id'] = element.key + 1;
          return Item.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items da Pokedex"),
      ),
      body: ItemList(item: item),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
