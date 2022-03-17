import 'package:kuis_123190106/detail_screen.dart';

import 'data_hotel.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataHotel hotel = hotelList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(username: hotel.name);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(hotel.imageUrl[0],width: 200,),
                  Text(hotel.name),
                  Text(hotel.stars),
                  Text(hotel.roomPrice),
                ],
              ),
            ),
          );
        },
        itemCount: hotelList.length,),
    );
  }
}
