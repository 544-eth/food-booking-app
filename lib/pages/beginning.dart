import 'package:flutter/material.dart';
import 'package:food_booking_app/pages/home_page.dart'; // Rename this to something like 'housing_home_page.dart' later

class Beginning extends StatelessWidget {
  const Beginning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo (update to a housing icon)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/housing.png', height: 80), // replace with your housing logo
              ),

              const SizedBox(height: 40),

              // TITLE
              const Text(
                'Your Home, Directly',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),

              const SizedBox(height: 48),

              // SUB TITLE
              const Text(
                'Find and rent homes directly from landlords. No agents, no extra fees – just housing made easy.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              // GET STARTED BUTTON
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(), // replace with updated housing home page
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 11, 33, 49),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
