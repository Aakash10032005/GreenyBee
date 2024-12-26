import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Individual quantity variables for each product
  int ixoraQuantity = 1;
  int madrasQuantity = 1;
  int ganeshaPotQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbackgroundcolour,
      appBar: AppBar(
        title: Center(
            child: Text(
              "Your Cart",
              style: TextStyle(
                color: titletextcolour,
              ),
            )),
        backgroundColor: homescreenbackgroundcolour,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Item - Ixora Light Pink
            Card(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    // Product Image
                    Image.asset(
                      'images/ixora_light_pink.jpg', // Replace with product image URL
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    // Product Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Name
                          Text(
                            'Ixora Light Pink', // Replace with actual name
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          // Product Price
                          Text(
                            'Rs 50.00', // Replace with actual price
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    // Quantity Button
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (ixoraQuantity > 1) ixoraQuantity--;
                            });
                          },
                        ),
                        Text(
                          '$ixoraQuantity',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              ixoraQuantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Product Item - Madras Thorn
            Card(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    // Product Image
                    Image.asset(
                      'images/madras_thorn.jpg', // Replace with product image URL
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    // Product Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Name
                          Text(
                            'Madras Thorn', // Replace with actual name
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          // Product Price
                          Text(
                            'Rs 35.00', // Replace with actual price
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    // Quantity Button
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (madrasQuantity > 1) madrasQuantity--;
                            });
                          },
                        ),
                        Text(
                          '$madrasQuantity',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              madrasQuantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Product Item - Ganesha Face Clay Pot
            Card(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    // Product Image
                    Image.asset(
                      'images/pot4.jpeg', // Replace with product image URL
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    // Product Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Name
                          Text(
                            'Ganesha Face Clay Pot', // Replace with actual name
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          // Product Price
                          Text(
                            'Rs 320.00', // Replace with actual price
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    // Quantity Button
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (ganeshaPotQuantity > 1) ganeshaPotQuantity--;
                            });
                          },
                        ),
                        Text(
                          '$ganeshaPotQuantity',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              ganeshaPotQuantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}