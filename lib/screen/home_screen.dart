import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('sex'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.loadUrl('https://www.naver.com');
              }
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://naver.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
