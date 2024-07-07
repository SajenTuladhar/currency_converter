
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller=  TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 43, 41, 41),
        title: const Text('Currency Converter',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 23, 22, 22),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              result.toStringAsFixed(4),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
             Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _controller,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Input amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 100, 99, 99)),
                  border: OutlineInputBorder(
                      //gapPadding: 100,
                      ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
                  fixedSize: MaterialStatePropertyAll(Size(200, 30))
                ),
                onPressed: () {
                  setState(() {
                    result = double.parse (_controller.text) * 133;
                  });
                },
                child: const Text(
                  'Convert',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
