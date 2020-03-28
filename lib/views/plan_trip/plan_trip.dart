import 'package:flutter/material.dart';
import 'package:adsmantravel/models/location.dart';

class PlanTrip extends StatelessWidget {
	final int _locationID;

	PlanTrip(this._locationID);

	@override
	Widget build(BuildContext context) {
		final location = Location.fetchByID(this._locationID);

		return Scaffold(
			appBar: AppBar(
				title: Text('Plan your trip'),
				backgroundColor: Colors.blue[700],
				centerTitle: true,
			),
			body: ListView(
				children: <Widget>[
					Container(
						padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
						child: Text('Plan your trip to ${location.name}', style: Theme.of(context).textTheme.headline),
					),
					Container(
						padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
						child: TextFormField(
							decoration: InputDecoration(labelText: 'Email'),
							validator: (value) {
								if (value.isEmpty) {
									return 'Please enter your email.';
								}
							},
						),
					),
					Container(
						padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
						child: TextFormField(
							decoration: InputDecoration(labelText: 'Date fot trip'),
							validator: (value) {
								if (value.isEmpty) {
									return 'Please enter your prefered trip date.';
								}
							},
						),
					),
					Container(
						padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
						margin: EdgeInsetsDirectional.only(top: 10.0),
						child: RaisedButton.icon(
							color: Colors.blue[700],
							onPressed: () {},
							icon: Icon(Icons.card_travel, color: Colors.white),
							label: Text('Confirm Trip', style: TextStyle(color: Colors.white)),
						),
					),
				],
			),
		);
	}
}