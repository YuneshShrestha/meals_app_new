import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //  ModalRoute
    final val = ModalRoute.of(context)?.settings.arguments
        as Map<String, String>; //null
    return Scaffold(
      appBar: AppBar(
        title: Text(val['title'].toString()),
      ),
      body: Image.network(val['image'].toString()),
    );
  }
}
