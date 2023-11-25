import 'package:faisal_urraan/Views/settings.dart';
import 'package:flutter/material.dart';

import '../themeConstants.dart';

class AudioSpeaking extends StatefulWidget {
  const AudioSpeaking({super.key});

  @override
  State<AudioSpeaking> createState() => _AudioSpeakingState();
}

class _AudioSpeakingState extends State<AudioSpeaking> {
  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text("Hauptmenü",
        style: TextStyle(color: kPrimaryAppColor),
        ),
        backgroundColor: kPrimarylight,
      ),
      body: Container(
        color: kPrimarylight,
        child: Center(
          child: Column(
            children: [
              Image(image:AssetImage('images/logo.png')),
              SizedBox(height: 50,),
              Text("“Die Stimme des Volkes.”  Sprich mit mir, ich höre zu!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SettingsScreen()),
                        );
                      },
                      child: Image(image:AssetImage('images/mic.png')))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("00:09",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: kPrimaryAppColor,
                              content: Container(
                                height: 100,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(textAlign: TextAlign.center,'Unterstütze dieses  ’gemeinnützige Projekt mit  einer Bewertung '
                                        ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    UnfilledRatingWidget(rating: 0,)
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                  Card(
                                    child: Container(
                                        color: kPrimarylight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Später',style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryAppColor),),
                                        )),
                                  ),
                                  Card(
                                    child: Container(
                                        color: kPrimarylight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child:  Text('Jetzt',style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryAppColor),),
                                        )),
                                  ),

                                ],)
                              ],
                            );
                          },
                        );
                      },
                      child: Image(image:AssetImage('images/keyboard.png'),width: 50,height: 50,))
                  , Image(image:AssetImage('images/cross.png'),width: 50,height: 50),],),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class UnfilledRatingWidget extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;
  final double starSpacing;

  UnfilledRatingWidget({
    required this.rating,
    this.size = 24.0,
    this.color = Colors.white,
    this.starSpacing = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final isFilled = (index + 1) <= rating;
        return Icon(
          isFilled ? Icons.star : Icons.star_border,
          size: size,
          color: color,
        );
      }).expand((widget) => [
        widget,
        SizedBox(width: starSpacing),
      ]).toList(),
    );
  }
}
