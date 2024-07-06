import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0', 
            style: TextStyle(
               color: Colors.white,
               fontSize: 60,
            ),),
            TextField(
              
              decoration: InputDecoration(
                hintText: 'Value',
                
                hintStyle: TextStyle(color: Color.fromARGB(255, 100, 99, 99)),
                border: OutlineInputBorder(
                  //gapPadding: 100,
                )
              ),
            )
          ],
        ),
        

      ),
    );
  }
}