import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_1/widgets/destination_widget.dart';
import 'package:submission_1/widgets/hotel_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int indexChoosed = 0;
  int _currentTab = 0;
  List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget renderIconList(int index){
    return GestureDetector(
      onTap : (){
        setState(() {
          indexChoosed = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: indexChoosed == index ? Theme.of(context).accentColor : Color(0xFFE7EBEE), 
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: Icon(
          icons[index],
          size: 25.0,
          color: indexChoosed == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox( height:20.0 ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons.asMap()
                  .entries.map(
                (MapEntry map) => renderIconList(map.key)
              ).toList(),
            ),
            SizedBox( height: 20.0),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Top Destinations',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        )
                      ),
                      GestureDetector(
                        onTap: () => print("see all"),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0
                          )
                        ),
                      )
                    ]
                  ),
                ),
                DestinationWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Recommended Hotels',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        )
                      ),
                      GestureDetector(
                        onTap: () => print("see all"),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0
                          )
                        ),
                      )
                    ]
                  ),
                ),
                HotelWidget()
              ],
            ),
          ]
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 28.0,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 28.0
            ),
            label: ''
          ),
        ]
      ),
    );
  }

}