import 'package:camecill_app/Pages/ItemDetailPage.dart';
import 'package:flutter/material.dart';
import '../Pages/ItemDetailPage.dart';


class PopularItemsWidget extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "image": "images/gelang.png",
      "title": "Gelang",
      "description": "Produknya comel dijamin gabakal nyesel!!",
      "price": "Rp 100.000",
    },
    {
      "image": "images/anting.png",
      "title": "Anting",
      "description": "Produknya comel dijamin gabakal nyesel!!",
      "price": "Rp 50.000",
    },
    {
      "image": "images/anting2.png",
      "title": "Anting 2",
      "description": "Produknya comel dijamin gabakal nyesel!!",
      "price": "Rp 75.000",
    },
    {
      "image": "images/jepit.png",
      "title": "Jepit",
      "description": "Produknya comel dijamin gabakal nyesel!!",
      "price": "Rp 30.000",
    },
    {
      "image": "images/bando.png",
      "title": "Bando",
      "description": "Produknya comel dijamin gabakal nyesel!!",
      "price": "Rp 40.000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: List.generate(items.length, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetailPage(
                        image: items[index]["image"]!,
                        title: items[index]["title"]!,
                        description: items[index]["description"]!,
                        price: items[index]["price"]!, detailedDescription: '',
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 150, // Adjusted width
                  height: 300, // Adjusted height
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80, // Adjusted height for image container
                          alignment: Alignment.center, // Center the image
                          child: Image.asset(
                            items[index]["image"]!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          items[index]["title"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjusted font size
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          items[index]["description"]!,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12, // Adjusted font size
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          items[index]["price"]!,
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjusted font size
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(Icons.favorite_border),
                            color: Colors.red,
                            iconSize: 20, // Smaller size for the button
                            onPressed: () {
                              // Action when like button is pressed
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Popular Items")),
      body: PopularItemsWidget(),
    ),
  ));
}
