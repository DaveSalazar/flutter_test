import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: EdgeInsets.only(
            top: 10.0,
            left: 50.0,
          right: 20
        ),
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.white,
          border: Border.all(color: Colors.deepOrange)
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(Icons.mode_comment, color: Colors.deepOrange,)
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

}

