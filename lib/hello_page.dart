import 'package:flutter/material.dart';
import 'package:flutter_dapp/contract_linking.dart';
import 'package:provider/provider.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContractLinking contractLink = Provider.of<ContractLinking>(context);
    final TextEditingController messageController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter dApp'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: contractLink.isLoading
              ? const CircularProgressIndicator()
              : Form(
                  child: Column(
                    children: [
                      Text(
                        'Welcome to dApp! ${contractLink.deployedName}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: messageController,
                        decoration: const InputDecoration(
                          hintText: "Enter Message",
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Set Message"),
                        ),
                        onPressed: () {
                          contractLink.setMessage(messageController.text);
                          messageController.clear();
                        },
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
