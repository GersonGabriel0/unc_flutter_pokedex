//importações Geral
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets/detail_image.dart';
import 'package:unc_flutter_pokedex/widgets/detail_title.dart';

//criação do Widget tipo Stateles
class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  // criação de Widget Detalhes
  @override
  Widget build(BuildContext context) {
    // recebimento de valores
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PokemonScreenData;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        // definição da rolagem
        physics: const BouncingScrollPhysics(),

        //criação de uma coluna com filhos
        child: Column(
          children: [
            // construção de widgets com seus parâmetros
            DetailImage(image: arguments.image),
            DetailTitle(
              id: arguments.id,
              name: arguments.name,
            ),
            DetailData(),
          ],
        ),
      ),

      // botão flutuante para retorno de página
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
