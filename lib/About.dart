import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/5.png',
                    width: double.infinity,
                    //height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coeurdes Alpes',
                    style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Show  Map',
                    style: TextStyle(color:Colors.blue)
                  ),
                  
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 4),
                  Text('4.5 (355 Reviews)'),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping and...',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  // Handle read more button press
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Read more'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_downward, size: 16),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Facilities',
                style: GoogleFonts.montserrat(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FacilityIcon(icon: Icons.wifi_outlined, label: '1 Heater'),
                  FacilityIcon(icon: Icons.restaurant, label: 'Dinner'),
                  FacilityIcon(icon: Icons.bathtub, label: 'Tub'),
                  FacilityIcon(icon: Icons.pool, label: 'Pool'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$199',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent[400],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle book now button press
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 47, 127, 201),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 23),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FacilityIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  FacilityIcon({required this.icon, required this.label, this.iconColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 38, color: iconColor),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
