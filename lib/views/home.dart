import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sabroso/widgets/client_card_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[ClientCardList(), Text("view 2"), Text("view 3")],
          ),
          appBar: AppBar(
            title: Text("Pedidos"),
            centerTitle: true,
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0, top: 20.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Cuentas",
                      ))),
            ],
            bottom: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepOrange,
                  border: Border.all(width: 2, color: Colors.white)),
              tabs: <Widget>[
                Tab(
                  text: "POR CLIENTE",
                ),
                Tab(
                  text: "POR MENU",
                ),
                Tab(
                  text: "POR UBICACION",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
