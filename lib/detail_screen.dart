import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.username}"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "${widget.username}\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _formInput(
      {required String hint,
        required String label,
        required Function(String value) setStateInput,
        int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          label: Text(label),
          contentPadding: EdgeInsets.all(12),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue))),
      onChanged: setStateInput,
    );
  }


}
