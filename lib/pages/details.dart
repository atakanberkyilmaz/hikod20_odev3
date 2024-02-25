import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String myString = '';
  DetailsPage({required this.myString});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Details Page '),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back")),
            SizedBox(
              height: 20,
            ),
            Text(widget.myString),
          ],
        ),
      ),
    );
  }
}