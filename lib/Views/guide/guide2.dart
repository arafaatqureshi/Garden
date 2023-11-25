import 'package:faisal_urraan/Views/guide/guide3.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';

class Guide2 extends StatefulWidget {
  const Guide2({super.key});

  @override
  State<Guide2> createState() => _Guide2State();
}

class _Guide2State extends State<Guide2> {
  final gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kPrimarylight, kPrimaryAppColor], // You can customize the colors here
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: gradient, // Apply the gradient to the background
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                  )
                ],),
              Image(image: AssetImage('images/img3.png'), width: 300,height: 300),
              SizedBox(height: 5,),
              Text("Ihr Wegweiser im Familienrecht",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  textAlign: TextAlign.center,
"Tauchen Sie ein in unsere  umfangreiche Sammlungan rechtlichen Informationen  – von aktuellen Sorgerechtsfragen bis  hin zu Regelungen in Eheverträgen.  Wir machen komplexe Rechtsthemen  für Sie verständlich und zugänglich.",
                  style: TextStyle( fontSize: 20, color: Colors.white),),
              ),
              Image(image: AssetImage('images/guide2.png')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Guide3()),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:20,left: 108.0,right: 108.0,bottom: 20),
                      child: Text("Weiter",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color:kPrimaryAppColor),),
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
