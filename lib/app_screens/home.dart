import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          //width: 200.0,
          //height: 100.0,,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Blue Air",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Da Torino a Catania",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Alitalia",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Da Catania a Roma",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              FlightImageAsset(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  //creo un widget da incolonnare dopo le scritte
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book your flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700
            ),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight booked successfully"),
      content: Text("Enjoy your flight"),
    );

    showDialog(
        context: context,
        //builder: (BuildContext context){
        //return alertDialog;
        //oppure come si usa in Dart
        builder: (BuildContext context) => alertDialog
    );
  }
}
