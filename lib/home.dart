import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Samuel's Slack"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image(
            image: const NetworkImage(
                'https://i.pinimg.com/1200x/69/a5/60/69a5602fb6377d1fef9bb45e8db9e415.jpg'),
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Name: Samuel Adams\n'
            'Email: sama2951@gmail.com\n'
            'Slack Name: Sam Adams\n'
            'Bio: I am a mobile intern at Zuri aiming to become a good mobile app developer in the near future',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/WebView');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Tap to go to my GitHub'),
          ),
        ],
      ),
    );
  }
}
