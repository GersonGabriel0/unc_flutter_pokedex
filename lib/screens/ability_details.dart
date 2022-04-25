//importações Geral
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/ability/ability_detail_title.dart';

// criação do widget stateless
class AbilityDetails extends StatelessWidget {
  //construtor de classe
  const AbilityDetails({Key? key}) : super(key: key);

  //construção do widget
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as AbilityScreenData;

    return Scaffold(
      //definição dos estilos
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        //definição do espaçamento
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        //definição da rolagem
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                //solicitando o AbilityDetailTitle com parametros
                child: AbilityDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ),
            )
          ],
        ),
      ),
      //botão flutuante para retorno da pagina
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
