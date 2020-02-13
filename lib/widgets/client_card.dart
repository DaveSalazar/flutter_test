import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_sabroso/widgets/comment_button.dart';
import 'package:flutter_app_sabroso/widgets/price_button.dart';

class ClientCard extends StatelessWidget {
  String username;
  String company;
  String image;
  int cant1;
  int cant2;
  double price;

  ClientCard(
      {Key key,
      this.cant1,
      this.cant2,
      this.company,
      this.price,
      this.username,
      this.image});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final photo = Container(
      margin: EdgeInsets.only(left: 20),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: new AssetImage(image), fit: BoxFit.fill )),
    );

    final userDetails = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 1),
            child: Text(username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(company, style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
    );

    final dato1 = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                cant1.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(padding: EdgeInsets.all(5), child: Text("Pollo", style: TextStyle(color: Colors.grey)))
        ],
      ),
    );

    final dato2 = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                cant2.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(padding: EdgeInsets.all(5), child: Text("Carne", style: TextStyle(color: Colors.grey)))
        ],
      ),
    );

    final precio = Container(
      child: PriceButton(price),
    );

    final cardHeader = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[photo, Spacer(), userDetails, CommentButton()],
      ),
    );

    final cardFooter = Container(
      //padding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 15, bottom: 15),
      child: Row(
        children: <Widget>[dato1, Spacer(), dato2, Spacer(), precio],
      ),
    );

    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              cardHeader,
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              cardFooter
            ],
          )),
    );
  }
}
