import 'package:flutter/material.dart';
import 'package:nhandrew_providerstart/providers/info.dart';
import 'package:nhandrew_providerstart/screens/page_2.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Top(),
          ),
          Flexible(
            child: Bottom(),
          ),
        ],
      ),
    );
  }
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('Change Values'),
              onPressed: () {
                info.changeTitle('New Title');
                info.changeDescription('My new description');
              },
            ),
            RaisedButton(
              child: Text('Next Page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Container(
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
    );
  }
}