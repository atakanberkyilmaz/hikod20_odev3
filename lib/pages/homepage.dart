import 'package:flutter/material.dart';
import 'details.dart';
import 'homepage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              Navigator.pushNamed(context, '/settings');
            },
          ),
          IconButton(
            icon: const Icon(Icons.details),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        myString: 'Hello World',
                      )));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Task $index'),
                    subtitle: Text('Görev $index'),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                myString: 'Item $index',
                              )));
                    },
                  );
                },
                itemCount: 20,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
