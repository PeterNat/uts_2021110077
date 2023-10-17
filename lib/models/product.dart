import 'package:flutter/material.dart';

class Product {
  final String nama;
  final int harga;
  final String deskripsi;
  final Image image;

  Product({
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.image,
  });

  static List<Product> getProducts() {
    return [
      Product(
        nama: "IPhone 14 Pro Max",
        harga: 15999000,
        deskripsi:
            "IPhone 14 Pro Max adalah smartphone flagship terbaru dari Apple. Ponsel ini memiliki layar Super Retina XDR 6,7 inci, prosesor A16 Bionic, dan kamera Pro 12MP yang sangat canggih.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Samsung Galaxy S22 Ultra",
        harga: 14999000,
        deskripsi:
            "Samsung Galaxy S22 Ultra adalah smartphone flagship terbaru dari Samsung. Ponsel ini memiliki layar Dynamic AMOLED 2X 6,8 inci, prosesor Snapdragon 8 Gen 1, dan kamera Quad 108MP yang sangat powerful.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Google Pixel 7 Pro",
        harga: 12999000,
        deskripsi:
            "Google Pixel 7 Pro adalah smartphone flagship terbaru dari Google. Ponsel ini memiliki layar OLED 6,7 inci, prosesor Tensor Google, dan kamera Pixel yang sangat terkenal.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Xiaomi 12 Pro",
        harga: 10999000,
        deskripsi:
            "Xiaomi 12 Pro adalah smartphone flagship terbaru dari Xiaomi. Ponsel ini memiliki layar AMOLED 6,73 inci, prosesor Snapdragon 8 Gen 1, dan kamera Triple 50MP yang sangat tajam.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Oppo Find X5 Pro",
        harga: 10499000,
        deskripsi:
            "Oppo Find X5 Pro adalah smartphone flagship terbaru dari Oppo. Ponsel ini memiliki layar AMOLED 6,7 inci, prosesor Snapdragon 8 Gen 1, dan kamera Triple 50MP yang sangat memukau.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Realme GT 2 Pro",
        harga: 9999000,
        deskripsi:
            "Realme GT 2 Pro adalah smartphone flagship terbaru dari Realme. Ponsel ini memiliki layar AMOLED 6,7 inci, prosesor Snapdragon 8 Gen 1, dan kamera Triple 50MP yang sangat menawan.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "Vivo X80 Pro",
        harga: 9499000,
        deskripsi:
            "Vivo X80 Pro adalah smartphone flagship terbaru dari Vivo. Ponsel ini memiliki layar AMOLED 6,78 inci, prosesor Snapdragon 8 Gen 1, dan kamera Quad 50MP yang sangat luar biasa.",
        image: Image.asset("assets/images/login_img.png"),
      ),
      Product(
        nama: "OnePlus 10 Pro",
        harga: 9299000,
        deskripsi:
            "OnePlus 10 Pro adalah smartphone flagship terbaru dari OnePlus. Ponsel ini memiliki layar AMOLED 6,7 inci, prosesor Snapdragon 8 Gen 1, dan kamera Triple 48MP yang sangat mengesankan.",
        image: Image.asset("assets/images/login_img.png"),
      ),
    ];
  }
}