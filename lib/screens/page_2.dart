import 'package:flutter/material.dart';
import 'package:nhandrew_providerstart/providers/info.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.blue),
              children: [
                TextSpan(
                  text: info.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ': '),
                TextSpan(text: info.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
