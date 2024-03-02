import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                  color: Color.fromARGB(150, 171, 176, 180),
                  ),
                child: const Icon(Icons.person_2_sharp),
              ),
              const SizedBox(
                  width:
                      8.0),
              const Text(
                "Hi Emu,",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("Here is the list of your groceries")),
                ],
            ),
          ],
        )
      );
  }
}
