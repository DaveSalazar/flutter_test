import 'package:flutter/cupertino.dart';
import 'package:flutter_app_sabroso/widgets/client_card.dart';

class ClientCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.all(
          10.0
      ),
      child: ListView(
        children: <Widget>[
          ClientCard(cant1: 24,cant2: 25,company: "Empresa", username: "Maria Sanchez", price: 193.99, image: 'assets/images/1.jpg',),
          ClientCard(cant1: 24,cant2: 25,company: "Empresa", username: "Jose Perez", price: 193.99, image: 'assets/images/1.jpg',),
          ClientCard(cant1: 24,cant2: 25,company: "Empresa", username: "Juan Gonzalez", price: 193.99, image: 'assets/images/1.jpg',),
        ],
      ),
    );
  }

}