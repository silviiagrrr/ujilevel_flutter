import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final String detailedDescription;

  ItemDetailPage({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.detailedDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.pink, // Custom color for the AppBar
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                image,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Price: $price',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Deskripsi Produk:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              detailedDescription,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Spesifikasi Produk:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              "Bahan: Karet Berkualitas Tinggi\n"
              "Warna: Beragam (Merah, Biru, Kuning, dll)\n"
              "Ukuran: Adjustable\n"
              "Cocok Untuk: Segala Usia\n",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Ulasan Pelanggan:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            _buildReview("Alice", "Product ini sangat lucu dan nyaman dipakai!"),
            _buildReview("Bob", "Warnanya cerah dan sesuai dengan foto."),
            _buildReview("Charlie", "Anak saya sangat menyukainya!"),
            SizedBox(height: 20),
            Text(
              "Rekomendasi Produk Serupa:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            _buildRecommendedProduct("images/cincin.png", "Ring Cantik", "Rp45,000"),
            _buildRecommendedProduct("images/2.jpg", "Jepit  Stylish", "Rp55,000"),
          ],
        ),
      ),
    );
  }

  Widget _buildReview(String reviewer, String review) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.star, color: Colors.pink, size: 20),
          SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reviewer,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  review,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedProduct(String imageUrl, String title, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(imageUrl, width: 50, height: 50),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(price),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ItemDetailPage(
      image: 'assets/images/gelang.jpg', // Example image path
      title: 'Product Lucu',
      description: 'Tambah keceriaan pada gaya Anda dengan product lucu ini!',
      price: 'Rp50,000',
      detailedDescription: 'Dirancang khusus untuk memberikan sentuhan playful pada penampilan Anda, product ini terbuat dari bahan berkualitas tinggi yang nyaman dipakai sepanjang hari. Cocok untuk segala usia, gelang ini hadir dalam berbagai warna cerah dan desain unik yang pasti akan menarik perhatian. Padukan dengan busana kasual atau formal untuk tampilan yang lebih menarik dan personal.',
    ),
  ));
}
