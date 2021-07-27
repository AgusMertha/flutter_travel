import 'package:flutter/material.dart';
import 'package:submission_1/models/hotel_model.dart';

class HotelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        itemBuilder: (BuildContext context, int index){
          Hotel hotel = hotels[index];
          return Container(
            margin: const EdgeInsets.all(10.0),
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 15.0,
                  child: Container(
                    height:120.0,
                    width:240.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            hotel.name,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2
                            )
                          ),
                          Text(
                            hotel.address,
                            style: TextStyle(
                              color: Colors.grey,
                            )
                          ),
                          Text(
                            "\$${hotel.price} / night",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            )
                          )
                        ]
                      ),
                    )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.2, 0.0),
                        blurRadius: 6.0
                      )
                    ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image(
                      height:150.0,
                      width:220.0,
                      image: AssetImage(hotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  )
                )
              ],
            ),
          );
        }
      )
    );
  }
}