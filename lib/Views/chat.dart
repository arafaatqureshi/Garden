import 'package:faisal_urraan/Views/audiospeaking.dart';
import 'package:faisal_urraan/themeConstants.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarylight,
      appBar: AppBar(

          backgroundColor:  kPrimarylight,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Hauptmenü',
            style: TextStyle(color:  kPrimaryAppColor),
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  ChatBubble(
                    message: 'Hey Doctor, am losing weight very fast, dehydrating profusely as well i have tried some stuffs, nothing seems to be working',
                    timestamp: 'November 2, 2023',
                    isSent: true,
                  ),
                  ChatBubble(
                    message: 'So sorry about how you feel and all you have been through, but not to worry am here to help you. When did you see these symptoms',
                    timestamp: 'November 2, 2023',
                    isSent: false,
                  ),
                  ChatBubble(
                    message: 'Over 2 days now, but that of weight was around last week',
                    timestamp: 'November 2, 2023',
                    isSent: true,
                  ),
                  ChatBubble(
                    message: 'Ok, here are some little tips, I will suggest you have a bottle of water all times, force yourself to drink a lot of water.',
                    timestamp: 'November 2, 2023',
                    isSent: false,
                  ),
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Hier tippen...',
            //       suffixIcon: Icon(Icons.send),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(20),
            //         borderSide: BorderSide.none,
            //       ),
            //       contentPadding: EdgeInsets.all(10),
            //       filled: true,
            //       fillColor: Colors.grey[200],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),

                    child: IconButton(
                      icon: Icon(Icons.mic_none,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AudioSpeaking()),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 14,),
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
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none, // Remove the border side
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          filled: true, // The background color is enabled
                          fillColor: Colors.white, // Set the fill color of the field
                          suffixIcon:  Image(image: AssetImage('images/send.png'),),
                          suffixIconColor: Colors.black// Search icon as a prefix inside the field
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ChatBubble extends StatelessWidget {
  final String message;
  final String timestamp;
  final bool isSent;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.timestamp,
    required this.isSent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.80;
    return SafeArea(
      child: Align(
        alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ensures the row only takes up needed space
          children: [
            if (!isSent) ...[
              Image.asset(
                'images/logo.png', // Replace with your asset image
                width: 40,
                height: 40,
              ),
              SizedBox(width: 8), // Spacing between the image and the chat bubble
            ],
            Container(
              width: containerWidth,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: isSent
                  ? EdgeInsets.only(top: 5, bottom: 5, right: 50)
                  : EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    timestamp,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 10,
                    ),
                  ),
                  if (!isSent) ...[
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.copy, size: 18),
                        Text(
                          "Copy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            if (isSent) ...[
              SizedBox(width: 50), // Add space after the chat bubble if it is a sent message
            ],
          ],
        ),
      ),
    );
  }
}
