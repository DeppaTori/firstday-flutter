import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  String url = "http://txt2html.sourceforge.net/sample.txt";
  http.Response data;
  bool load;

  @override
  void initState() {
    super.initState();
    load = true;
    fetchData();
  }

  fetchData() async {
      data = await http.get(url);
      load = false;
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Page"),
      ),
      body:load?CircularProgressIndicator():Container(
        child: Text(data.body.toString()),
      )
    );
  }

}
