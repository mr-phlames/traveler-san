import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import './../../models/location.dart';
import 'package:adsmantravel/app.dart';

class LocationDetail extends StatelessWidget {
	final int _locationID;

	LocationDetail(this._locationID);

	@override
	Widget build(BuildContext context) {
		final location = Location.fetchByID(_locationID);

		return Scaffold(
			appBar: AppBar(
				title: Text(location.name),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
			),
			body: ListView(
				children: <Widget>[
					Container(
						margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.stretch,
							children: <Widget>[
								ImageBanner(location.imagePath),
							]..addAll(textSections(location)),
						),
					),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: RaisedButton.icon(
              icon: Icon(Icons.airplanemode_active, color: Colors.white),
              color: Colors.blue[700],
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
                child: Text('Plan your trip to ${location.name}', style: TextStyle(color: Colors.white)),
              ),
              onPressed: () => _onLocationTap(context, this._locationID),
            )
          )
				],
			),
		);
	}

  _onLocationTap(BuildContext context, int locationID) {
		Navigator.pushNamed(context, PlanTripRoute, arguments: { "id": locationID });
	}

	List<Widget> textSections(Location location) {
		return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
	}
}