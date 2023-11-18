import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const  border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueGrey
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '100',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Please enter the amount in INR',
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  prefixIcon: Icon(IconData(0xf05db, fontFamily: 'MaterialIcons')),
                  focusedBorder: border,
                  enabledBorder: border
                ),
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  if (kDebugMode){
                    print("Convert button pressed");
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  minimumSize: const Size(double.infinity, 50)
                ),
                child: const Text(
                  'Convert', 
                  style: TextStyle(
                    color: Colors.white
                  )
                )
              ),
            )
          ],
        )  
      )
    );
  }
}