class Product {
  final String nama;
  final int harga;
  final String deskripsi;
  final String imagePath;

  Product({
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.imagePath,
  });

  static List<Product> getProducts() {
    return [
      Product(
        nama: "Single Chair",
        harga: 1300000,
        deskripsi:
            "Our single chair is the embodiment of simplicity and comfort. It's designed with a focus on providing a cozy and stylish seating solution for any room. This chair is a versatile addition to your decor, whether used as an accent piece or a comfortable spot for relaxation.",
        imagePath: "assets/images/products/single-chair.jpg",
      ),
      Product(
        nama: "Sofa Medium /W",
        harga: 2900000,
        deskripsi:
            "The medium-sized sofa is a versatile piece that balances comfort and style. Its spacious seating and modern design make it a great addition to your home. Whether you're hosting guests or enjoying a relaxing evening, this sofa offers a perfect blend of luxury and functionality.",
        imagePath: "assets/images/products/sofa-1.jpg",
      ),
      Product(
        nama: "Wall Shelf",
        harga: 1500000,
        deskripsi:
            "Our wall shelf is a space-saving solution with a touch of elegance. It's designed to help you display your cherished items while maximizing the use of your wall space. This practical and stylish addition is a great organizational asset for any room.",
        imagePath: "assets/images/products/rak-1.jpg",
      ),
      Product(
        nama: "Sofa XL Grey",
        harga: 2900000,
        deskripsi:
            "The grey sofa is the epitome of comfort and sophistication. Its plush cushions and contemporary design make it a perfect choice for your living room. With a neutral grey color, it effortlessly complements any decor, ensuring your space exudes both style and coziness.",
        imagePath: "assets/images/products/sofa-2.jpg",
      ),
      Product(
        nama: "Meeting Table",
        harga: 2200000,
        deskripsi:
            "Elevate your office space with our meeting table. It's designed to foster collaboration and productivity. Its spacious surface accommodates your team's needs while exuding a professional and contemporary aesthetic, making it an excellent choice for your workplace.",
        imagePath: "assets/images/products/meeting-table.jpg",
      ),
      Product(
        nama: "Dining Table",
        harga: 1900000,
        deskripsi:
            "Our dining table is the epitome of modern elegance. Designed for both family meals and formal gatherings, its sleek lines and durable construction make it the ideal centerpiece for your dining area. Enjoy meals in style with this timeless addition.",
        imagePath: "assets/images/products/dining-table.jpg",
      ),
      Product(
        nama: "Book Shelf",
        harga: 1200000,
        deskripsi:
            "The bookshelf is a versatile piece of furniture that adds sophistication to any room. Its spacious shelves provide ample storage space for your favorite books and decorative items, while the elegant design elevates your space. Organize your collection with style.",
        imagePath: "assets/images/products/rak-2.jpg",
      ),
      Product(
        nama: "Living Room Table",
        harga: 1200000,
        deskripsi:
            "Our living room table is a stunning addition to your home decor. Crafted with precision, it combines functionality and style, making it a perfect centerpiece for your living room. Its sleek design and durable materials ensure it will be an enduring part of your interior for years to come.",
        imagePath: "assets/images/products/meja-1.jpg",
      ),
    ];
  }
}

