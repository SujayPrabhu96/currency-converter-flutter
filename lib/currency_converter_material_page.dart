import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

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
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Please enter the amount in USD',
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  prefixIcon: Icon(Icons.monetization_on, color: Colors.white),
                  focusedBorder: border,
                  enabledBorder: border
                ),
                style: const TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  minimumSize: const Size(double.infinity, 50)
                ),
                child: const Text(
                  'Convert to INR',
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