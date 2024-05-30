//Nure Hafsa Shefa_20CSE018
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_2/About.dart';


class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            
            SizedBox(height: 10,),
            
                        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text(
                  "Explore",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.blue,),
                    Text("Aspen, USA"),
                    Icon(Icons.arrow_drop_down),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Aspen",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Find things to do',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                 
                  },
                  child: Text('Location',
                      style: TextStyle(color: Color.fromARGB(249, 14, 58, 235))),
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Hotel',
                      style: TextStyle(color: Color.fromARGB(250, 72, 71, 71))),
                ),
                ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text('Food',
                      style: TextStyle(color: Color.fromARGB(250, 72, 71, 71))),
                ),
                ElevatedButton(
                  onPressed: () {
                
                  },
                  child: Text('Adventure',
                      style: TextStyle(color: Color.fromARGB(250, 72, 71, 71))),
                ),
              ],
            ),
            
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text("See all",
                    style:
                        TextStyle(color:Colors.blue)),
              ],
            ),
            
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/1.png'),
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 0,
                        right: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom:
                                      8.0), 
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Alley Palace',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left:
                                          8.0), 
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20, 
                                      ),
                                      SizedBox(
                                          width:
                                              4), 
                                      Text(
                                        '4.1',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                          width:
                                              8), 
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.all(
                                      8), 
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    
                                    size: 20, 
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/2.png'),
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 10,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                print('Button pressed');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutScreen()));
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 10),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(70, 15)), // Adjust size as needed
                              ),
                              child: Text(
                                "Coeurdes Alpens",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15), // Adjust font size if needed
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20, // Adjust the size of the icon
                              ),
                              SizedBox(
                                  width:
                                      4), // Add some spacing between the icon and text
                              Text(
                                '4.5',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recomennded",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image(
                              image: AssetImage('assets/3.png'),
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: -20,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(color: Colors.white, width: 2),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 10),
                                  child: Text(
                                    '4N/5D',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                16), // Add some space between the image and the additional text
                        Text(
                          'Explore Aspen',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                image: AssetImage('assets/4.png'),
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom:
                                  -20, // Adjusted position to ensure full visibility
                              right: 0,
          
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(color: Colors.white, width: 2),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  child: Text(
                                    '2N/3D',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                8), // Add space between the image and the additional text
                        Text(
                          'Luxrious Aspen',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 44, 14, 243),
        unselectedItemColor: Colors.grey,
        //onTap: _onItemTapped,
     ),

    );
  }
}