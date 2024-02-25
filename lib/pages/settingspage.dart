import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int counter = 0;
  bool isOpen = false;

  void toggleButton() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  void inreaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings Page')),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Settings Page'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    inreaseCounter();
                  },
                  child: Text("Increase Counter")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    decreaseCounter();
                  },
                  child: Text("Decrase Counter")),
              SizedBox(
                height: 20,
              ),
              Text('Counter: $counter'),
              SizedBox(
                height: 50,
              ),
              IconButton(
                  onPressed: () {
                    toggleButton();
                  },
                  icon: Icon(Icons.photo_camera)),
              SizedBox(
                height: 20,
              ),
              if (isOpen)
                Image.asset(
                  'assets/images/myimage.jpg',
                  width: 300,
                  height: 300,
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ///Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
            //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          child: Icon(Icons.arrow_back),
        ));
  }
}
