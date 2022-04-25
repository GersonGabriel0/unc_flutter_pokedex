//importações Geral
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets/ability/pokemon_ability_list.dart';

//criação da classe
class HomeAbility extends StatefulWidget {
  const HomeAbility({Key? key}) : super(key: key);

  @override
  State<HomeAbility> createState() => _HomeAbilityState();
}

class _HomeAbilityState extends State<HomeAbility> {
  List<Ability> ability = List.empty();

  @override
  void initState() {
    super.initState();
    getAbilityFromPokeApi();
  }

  //Recebimentos dos dados do pokemons
  void getAbilityFromPokeApi() async {
    //chamanda a classe
    PokeAPI.getAbility().then((response) {
      //transformando os dados para o formato list
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        ability = data.asMap().entries.map<Ability>((element) {
          element.value['id'] = element.key + 1;
          return Ability.fromJson(element.value);
        }).toList();
      });
    });
  }

  //criação do widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Habilidades dos Pokemons"),
      ),
      // chamando widget como parametro
      body: AbilityList(ability: ability),
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
