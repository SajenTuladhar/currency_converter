import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                   hintText: 'Input amount in USD',
                   hintStyle: TextStyle(color: Color.fromARGB(255, 100, 99, 99)),
                  border: OutlineInputBorder(
                    //gapPadding: 100,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            )
          ],
        ),
        

      ),
    );
  }
}