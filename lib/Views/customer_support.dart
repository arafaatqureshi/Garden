import 'package:faisal_urraan/Views/settings.dart';
import 'package:faisal_urraan/main.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';


class Customer_Support extends StatelessWidget {

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

          backgroundColor:  primaryLight,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Customer Support',
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
              SizedBox(height: 50,),
              SettingsTile(
                title: 'Support@99contractscom',
                icon: Icons.email,
                iconColor: primaryDark,
              ),
              SettingsTile(
                title: '99contracts.com',
                icon: Icons.web,
                iconColor: primaryDark,
              ),


            ],
          ),
        ),
      ),
    );
  }
}