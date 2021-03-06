import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_1/models/activity_model.dart';
import 'package:submission_1/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({required this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
 
}

class _DestinationScreenState extends State<DestinationScreen>{

  buildRatingStar(int rating){
    String stars = '';

    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }

    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 30.0,
                    )
                  ]
                )
              ),
              Positioned(
                left: 20.0,
                bottom: 15.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      )
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 20.0,
                          color: Colors.white                                            
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          widget.destination.country,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          )
                        ),
                      ],
                    )          
                  ]
                ),
              )
            ]
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(110.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:120.0,
                                  child: Text(
                                    activity.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                Text(
                                  "\$${activity.price}",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                  )
                                )
                              ]
                            ),
                            Text(
                              activity.type,
                              style: TextStyle(
                                color: Colors.grey
                              )
                            ),
                            buildRatingStar(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activity.startTimes[0]
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  width: 70.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activity.startTimes[1]
                                  ),
                                )
                              ]
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 120.0,
                          image: AssetImage(
                            activity.imageUrl
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
          )
        ],
      ),
    );
  }

}