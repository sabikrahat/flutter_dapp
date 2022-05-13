import 'package:flutter/material.dart';
import 'package:flutter_dapp/contract_linking.dart';
import 'package:flutter_dapp/hello_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: MaterialApp(
        title: 'Flutter dApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HelloPage(),
      ),
    );
  }
}
