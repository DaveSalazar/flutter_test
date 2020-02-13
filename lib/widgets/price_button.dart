import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {

  double price;

  PriceButton(this.price);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: 30.0,
        width: 90.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
           color: Colors.amberAccent
        ),

        child: Center(
          child: Text(
            '\$' + price.toString(),
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),

          ),
        ),

      ),
    );
  }

}

