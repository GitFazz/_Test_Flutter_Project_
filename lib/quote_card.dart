import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  // FINAL, bcz this is an stateless widget, we cant use changeable data here
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16,16,0),

      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 23,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 15,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 8.0),
          FlatButton.icon(
            onPressed: delete,
            label: Text('delete'),
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
