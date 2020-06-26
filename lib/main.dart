import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp( 
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {


  List<Quote> quotes = [
    Quote(text:'Change the world by being yourself.', author: 'Amy Poehler'),
    Quote(text: 'Every moment is a fresh beginning.', author: 'T.S Eliot'),
    Quote(text: 'Never regret anything that made you smile', author: 'Mark Twain'),
    Quote(text: 'Die with memories, not dreams.', author: 'Unknown'),
    Quote(text: 'Everything you can imagine is real.', author: 'Pablo Picasso'),
    Quote(text: 'Whatever you do, do it well.', author: 'Walt Disney'),
    Quote(text: 'Tumi aro bhalo deserve koro.',author: 'My Ex'),
    Quote(text: 'What we think, we become.', author: 'Buddha'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
          quote: e,
          delete: () {
            setState(() {
              quotes.remove(e);
            });
          }
        )).toList(),

      ),

    );
  }
}

