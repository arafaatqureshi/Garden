import 'package:faisal_urraan/Views/customer_support.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const Color primaryDark = Color(0xFF044267);
    const Color primaryLight = Color(0xFFDAECF8);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimarylight,

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
      backgroundColor:primaryLight ,
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          actions: <Widget>[
            IconButton(
              icon:Image(image: AssetImage('images/search.png'),),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon:Image(image: AssetImage('images/dots.png'),),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor:  primaryLight,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Settings',
            style: TextStyle(color:  primaryDark),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
          )
      ),
      body: Container(
        color: primaryLight,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              SettingsTile(
                title: 'App bewerten',
                icon: Icons.star,
                iconColor: primaryDark,
              ),
              SettingsTile(
                title: 'App teilen',
                icon: Icons.share,
                iconColor: primaryDark,
              ),
              SettingsTile(
                title: 'Privacy policy',
                icon: Icons.privacy_tip,
                iconColor:primaryDark,
              ),
              SettingsTile(
                title: 'Terms & Conditions',
                icon: Icons.description,
                iconColor: primaryDark,
              ),
              SettingsTile(
                title: 'Support',
                icon: Icons.support_agent,
                iconColor: primaryDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;

  const SettingsTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color primaryDark = Color(0xFF044267);

    return Container(
      margin: EdgeInsets.fromLTRB(30,10,30,10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                // Assuming the text color is black
                color: primaryDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              icon,
              color: primaryDark,
            ),
            trailing: Icon(
              Icons.arrow_forward,
              // Assuming the arrow icon color is a lighter shade of black or grey
              color: Colors.grey.shade600,
              size: 26.0, // Assuming the icon is slightly smaller
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Customer_Support()),
              );            },
          ),
        ),
      ),
    );
  }
}
