import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => _buildSquare()),
              ),
              LargeBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquare() {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}

class LargeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Center(
        // pusat tumpuk persegi panjang
        child: Stack(
          children: [
            // persegi panjang 1 besar kedua
            Container(
              width: 280,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
            ),
            // persegi panjang 2 tengah
            Positioned.fill(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ),
            // persegi panjang 3 kecil
            Positioned.fill(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
