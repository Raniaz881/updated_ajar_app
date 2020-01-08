
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/apartment.dart';
import 'package:flutter_app/carousels/apartment_carousel.dart';
import 'package:flutter_app/carousels/office_carousel.dart';

import 'Payment/MyCardPage.dart';
import 'Payment/card_front.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBEDEF),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(colors: <Color>[
                  Colors.teal,
                  Colors.white,
                ],
                ),
              ),
            ),
          ],

        ),
      ),
      body: SafeArea(

        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: RichText(
                text:TextSpan(
                  children: [
                    TextSpan(text: 'Hello, ', style: TextStyle(
                      color: Theme
                          .of(context)
                          .primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
                    TextSpan(text: 'What are you looking for?',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF354241),
                      ),)

                  ],
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top:20),
              child: Column(
                children: <Widget>[
                  TextField(

                      decoration: InputDecoration(
                        hintText: ('Search by area...'),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),

                       ),
                      ),


                  ),
                ],

              ),
            ),




            SizedBox(height: 40.0),
            ApartmentsCarousel(),
            SizedBox(height: 20.0),
            OfficeCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFB2DFDB),
        height: 50,

        items: <Widget>[
          Icon(Icons.home, size: 30, color: Color(0xFF354241),),
          Icon(Icons.chat_bubble_outline, size: 30,  color: Color(0xFF354241
          ),),
          Center(
            child: Icon(Icons.add, size: 30,  color: Color(0xFF354241
            ),),
          ),
          IconButton(
            icon: Icon(Icons.payment, size: 30, color: Color(0xFF354241
            ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => MyCardsPage()));
            },
          ),

          Icon(Icons.insert_drive_file, size: 30, color: Color(0xFF354241
          ),),
        ],
        animationDuration: Duration(
            milliseconds: 250
        ),

        onTap: (index) {
          debugPrint("Current Index is $index");
          //Handle button tap
        },
      ),

    );

  }
}

class CustomListTile extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

