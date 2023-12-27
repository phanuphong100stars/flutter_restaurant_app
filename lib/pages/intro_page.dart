import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button_component.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 132, 35, 28),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Shop Name
                const SizedBox(height: 25),
                Text(
                  "Sushi's Micowave ",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28, color: Colors.white),
                ),
                const SizedBox(height: 25),

                // Icon

                Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset('lib/images/salmon_egg.png')),

                const SizedBox(height: 25),

                //  Title

                Text(
                  'SUSHI IS THE BEST FOOD FOREVER',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 44, color: Colors.white),
                ),
                const SizedBox(height: 10),
                // Sub Title

                Text(
                  'Feel the taste of most famous Japanese food from around the world.',
                  style: TextStyle(color: Colors.grey[300], height: 2),
                ),
                // Get Start Button

                ButtonComponent(
                  text: 'Get Started',
                  onTap: () {
                    Navigator.pushNamed(context, '/menu-page');
                  },
                ),
              ]),
        ));
  }
}
