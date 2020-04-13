import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  List<String> added = [];
  String currentText = "";
  List<String> suggestions = [
    'Language',
    'Literature',
    'Poetry',
    'Fiction',
    'Fantasy',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 16, 0),
          child: SimpleAutoCompleteTextField(
            key: key,
            suggestions: suggestions,
            textChanged: (text) => currentText = text,
            clearOnSubmit: true,
            suggestionsAmount: 4,
            decoration: InputDecoration(
                fillColor: Colors.grey[200],
                hintText: "What are you looking for?",
                hintStyle: new TextStyle(
                  color: Colors.grey[400],
                  fontFamily: "Nunito",
                  fontSize: 15,
                ),
                suffixIcon: new Icon(Icons.search)),
            textSubmitted: (text) => setState(() {
              if (text != "") {
                added.add(text);
              }
            }),
          ),
        ),
      ),
    );
  }
}
