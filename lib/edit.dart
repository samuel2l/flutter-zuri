import 'package:flutter/material.dart';
import 'package:zurifirstprj/home.dart';
import 'package:zurifirstprj/inputs.dart';

class Edit extends StatefulWidget {
  const Edit({
    super.key,
    required this.name,
    required this.slackName,
    required this.bio,
    required this.mail,
  });
  final String name, slackName, bio, mail;

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  late final TextEditingController _email;
  late final TextEditingController _name;
  late final TextEditingController _slackName;
  late final TextEditingController _bio;

  var spacing = SizedBox(
    height: 15,
  );
  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _name = TextEditingController();
    _slackName = TextEditingController();
    _bio = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _name.dispose();
    _slackName.dispose();
    _bio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 206, 201, 201),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Input(hint: 'Enter new email', controller: _email),
            spacing,
            Input(hint: 'Enter new name', controller: _name),
            spacing,
            Input(hint: 'Enter new slack name', controller: _slackName),
            spacing,
            Input(hint: 'New Bio', controller: _bio),
            spacing,
            spacing,
            TextButton(
              onPressed: () {
                if (_bio.text == '') {
                  _bio.text = widget.bio;
                }
                if (_slackName.text == '') {
                  _slackName.text = widget.slackName;
                }
                if (_email.text == '') {
                  _email.text = widget.mail;
                }
                if (_name.text == '') {
                  _name.text = widget.name;
                }

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(
                        name: _name.text,
                        slackName: _slackName.text,
                        bio: _bio.text,
                        mail: _email.text)));
              },
              child: const Text(
                'Save changes',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
