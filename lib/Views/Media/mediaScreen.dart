import 'package:faisal_urraan/Views/audiospeaking.dart';
import 'package:faisal_urraan/Views/chat.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';


class MediaScreen extends StatefulWidget {
  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Chat(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimarylight,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Image(image: AssetImage('images/homeicon.png'),),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('images/bubble.png'),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('images/user.png'),),
            label: '',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryAppColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Image(image: AssetImage("images/home.png")),
            Text(
              "Ius Familiae ”Recht für die Familie”",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kPrimarylight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Stellen Sie mir eine Frage...',
                        hintStyle: TextStyle(color: kPrimaryAppColor,fontWeight: FontWeight.bold), // Set the hint text color to black

                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none, // Remove the border side
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none, // Remove the border side
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        filled: true, // The background color is enabled
                        fillColor: kPrimarylight, // Set the fill color of the field
                        suffixIcon:  Icon(Icons.search),
                        suffixIconColor: Colors.black// Search icon as a prefix inside the field
                      ),
                    ),
                  ),
                  Card(
                    color: kPrimarylight,
                    child: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AudioSpeaking()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                  // Set padding to zero
                  childAspectRatio: 1.0, // Adjust this ratio if needed
                ),
                itemCount: 8, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  // Replace with your image URLs
                  final imageUrl = ['images/criminal.png','images/lights.png'
                    ,'images/divorce.png','images/child.png',
                    'images/rape.png','images/fraud.png',
                    'images/criminal.png','images/lights.png'
                  ]; // Placeholder URL
                  final labelText = ['Criminal case','Litigation case'
                    ,'Divorce','Child Abuse',
                    'Rape','Fraud',
                    'Murder','Forgery'
                  ]; // Text below the image
                  return GridItem(imageUrl: imageUrl[index], labelText: labelText[index]);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Screen'),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String labelText;

  GridItem({required this.imageUrl, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageUrl, width: 300,),
        SizedBox(height: 3.0),
        Text(labelText, style: TextStyle(color: Colors.white, fontSize: 17),),
      ],
    );
  }
}