import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(HotelApp());
}

class Hotel {
  String name;
  int rating;
  String description;
  int price;
  String image;

  Hotel(
      {required this.name,
      required this.rating,
      required this.description,
      required this.price,
      required this.image});
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  List<Hotel> hotels = [
    Hotel(
      name: 'Songphunburi 1',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_01.jpg',
    ),
    Hotel(
      name: 'Songphunburi 2',
      price: 1000,
      description: 'wifi include',
      rating: 2,
      image: 'images/hotel_02.jpg',
    ),
    Hotel(
      name: 'Songphunburi 3',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_03.jpg',
    ),
    Hotel(
      name: 'Songphunburi 4',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_04.jpg',
    ),
    Hotel(
      name: 'Songphunburi 5',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_05.jpg',
    ),
    Hotel(
      name: 'Songphunburi 6',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_06.jpg',
    ),
    Hotel(
      name: 'Songphunburi 7',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_07.jpg',
    ),
    Hotel(
      name: 'Songphunburi 8',
      price: 1000,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_08.jpg',
    ),
  ];

  //get index => 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kled Hotel App.'),
        ),
        body: GridView.builder(
          itemCount: hotels.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (_, int index) {
            return InkWell(
              child: GridTile(
                child: Container(
                  color: Colors.pink,
                  child: Image.asset(hotels[index].image),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
