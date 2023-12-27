import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button_component.dart';
import 'package:restaurant_app/components/food_tile_component.dart';
import 'package:restaurant_app/models/food_model.dart';
import 'package:restaurant_app/theme/colors_theme.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
// Food Menu

  List foodMenu = [
    Food(
        name: 'Salmon Sushi',
        price: '21.00',
        imagePath: 'lib/images/salmon_sushi.png',
        rating: '4.9'),
    Food(
        name: 'Tuna Sushi',
        price: '70.20',
        imagePath: 'lib/images/tuna.png',
        rating: '3.6')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(
              Icons.menu,
              color: Colors.grey[900],
            ),
            title: Text(
              'Bangkok',
              style: TextStyle(color: Colors.grey[900]),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Promo  Banner

            Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  // Promo Message
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Get 32% Promo',
                            style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ButtonComponent(
                          text: 'Redeem',
                          onTap: () {},
                        ),
                      ],
                    ),

                    // Images

                    Image.asset(
                      'lib/images/many_sushi.png',
                      height: 100,
                    )
                  ],
                  // Redeem Button
                )),

            const SizedBox(
              height: 20,
            ),

            // Search Bar
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: primaryColor,
                      )),
                )),

            const SizedBox(
              height: 20,
            ),

            // Menu

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('Food Menu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 18,
                    ))),

            const SizedBox(
              height: 10,
            ),

            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            )),

            const SizedBox(
              height: 25,
            ),

            // Popular Food

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 25,
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/salmon_egg.png',
                          height: 60,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name
                            Text('Salmon Egg',
                                style:
                                    GoogleFonts.dmSerifDisplay(fontSize: 18)),

                            const SizedBox(
                              width: 10,
                            ),

                            Text('\$ 21.00',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                )),

                            // Price
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.favorite_outline,
                        color: Colors.grey, size: 28),
                  ]),
            ),

            const SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
