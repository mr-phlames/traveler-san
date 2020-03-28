import 'package:flutter/material.dart';
import 'location_container.dart';
import 'package:adsmantravel/models/location.dart';
import 'package:adsmantravel/app.dart';

class Locations extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final locations = Location.fetchAll();

		return Scaffold(
			appBar: AppBar(
				title: Text('Traveller-san'),
				backgroundColor: Colors.blue[700],
				centerTitle: true,
			),
			body: ListView(
				children: locations.map((location) => GestureDetector(
					child: Container(
						margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 15.0),
						child: LocationContainer(location.imagePath, location.name, location.location, location.likes)
					),
					onTap: () => _onLocationTap(context, location.id),
				)).toList(),
			),
		);
	}

	_onLocationTap(BuildContext context, int locationID) {
		Navigator.pushNamed(context, LocationDetailRoute, arguments: { "id": locationID });
	}
}