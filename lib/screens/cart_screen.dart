import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> selectedProducts = [
    Product(
      nama: "Single Chair",
      harga: 1300000,
      deskripsi:
          "Our single chair is the embodiment of simplicity and comfort. It's designed with a focus on providing a cozy and stylish seating solution for any room. This chair is a versatile addition to your decor, whether used as an accent piece or a comfortable spot for relaxation.",
      imagePath: "assets/images/products/single-chair.jpg",
    ),
    Product(
      nama: "Living Room Table",
      harga: 1200000,
      deskripsi:
          "Our living room table is a stunning addition to your home decor. Crafted with precision, it combines functionality and style, making it a perfect centerpiece for your living room. Its sleek design and durable materials ensure it will be an enduring part of your interior for years to come.",
      imagePath: "assets/images/products/meja-1.jpg",
    ),
    Product(
        nama: "Book Shelf",
        harga: 1200000,
        deskripsi:
            "The bookshelf is a versatile piece of furniture that adds sophistication to any room. Its spacious shelves provide ample storage space for your favorite books and decorative items, while the elegant design elevates your space. Organize your collection with style.",
        imagePath: "assets/images/products/rak-2.jpg",
      ),
  ];

  List<int> quantities = [2, 1, 3];

  @override
  Widget build(BuildContext context) {
    double totalCart = 0.0;

    // Hitung total harga dari semua produk
    for (int i = 0; i < selectedProducts.length; i++) {
      totalCart += selectedProducts[i].harga.toDouble() * quantities[i];
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
              const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedProducts.length,
              itemBuilder: (context, index) {
                Product product = selectedProducts[index];
                int quantity = quantities[index];
                double totalPrice = product.harga.toDouble() * quantity;

                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 80, // Lebar gambar
                          height: 80, // Tinggi gambar
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(product.imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0), // Jarak antara gambar dan teks
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.nama,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp. ${NumberFormat.decimalPattern().format(product.harga)}',
                                  ),
                                  Text(
                                    ' x $quantity',
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Rp. ${NumberFormat.decimalPattern().format(totalPrice)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // bottom bar
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp. ${NumberFormat.decimalPattern().format(totalCart)}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                   onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Thank you'),
                        duration: Duration(seconds: 2),
                      ),
                    );

                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop();
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 4, 87, 98),),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  ),
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
