import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '100',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Please enter the amount in INR',
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(IconData(0xf05db, fontFamily: 'MaterialIcons')),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                )
              ),
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        )  
      )
    );
  }
}