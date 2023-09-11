import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        title: Text("Samuel's Slack"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Image(
            image: NetworkImage(
                'https://i.pinimg.com/1200x/69/a5/60/69a5602fb6377d1fef9bb45e8db9e415.jpg'),
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            'Name: Samuel Adams\n'
            'Email: sama2951@gmail.com\n'
            'Slack Name: Sam Adams\n'
            'Bio: I am a mobile intern at Zuri aiming to become a good mobile app developer in the near future',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/WebView');
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Tap to go to my GitHub'),
          ),
        ],
      ),
    );  }
}

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..clearCache()
    ..loadRequest(Uri.parse('https://github.com/samuel2l/Zuri-flutter.git'));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebViewWidget(controller: controller),
    );
  }
}
