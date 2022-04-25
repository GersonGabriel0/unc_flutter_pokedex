// importações Geral
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/type/type_detail_title.dart';

class TypeDetails extends StatelessWidget {
  // construtor de classe
  const TypeDetails({Key? key}) : super(key: key);

  // widget TypeDetails
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as TypeScreenData;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TypeDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ),
            )
          ],
        ),
      ),
      // botão flutuante para retorno de página
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
