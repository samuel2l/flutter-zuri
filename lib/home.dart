import 'package:flutter/material.dart';
import 'package:zurifirstprj/edit.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key,
      required this.name,
      required this.slackName,
      required this.bio,
      required this.mail});
  final String name, slackName, bio, mail;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 206, 201, 201),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "${widget.name}'s Slack Profile  ",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14)),
              child: Image(
                image: const AssetImage('assets/messi leg.jpg'),
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Text(
                'Name: ${widget.name}\n'
                'Email: ${widget.mail}\n'
                'Slack Name: ${widget.slackName}\n'
                'Bio: ${widget.bio}',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/WebView');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Tap to go to my GitHub',style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Edit(
                        name: widget.name,
                        slackName: widget.slackName,
                        bio: widget.bio,
                        mail: widget.mail)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Edit Profile',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
