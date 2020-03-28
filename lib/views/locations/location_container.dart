import 'package:flutter/material.dart';

class LocationContainer extends StatelessWidget {
	final String imagePath;
	final String locationName;
	final String location;
	final String likes;
	static const double _hpad = 16.0;
	static const double _vpad = 4.0;

	LocationContainer(this.imagePath, this.locationName, this.location, this.likes);

	@override
	Widget build(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: <Widget>[
				Container(
					padding: const EdgeInsets.fromLTRB(_hpad, _vpad, _hpad, _vpad),
					child: Image.asset(imagePath),
				),
				Container(
					padding: const EdgeInsets.fromLTRB(_hpad, _vpad, _hpad, _vpad),
					child: Text(locationName, style: Theme.of(context).textTheme.title),
				),
				Container(
					padding: const EdgeInsets.fromLTRB(_hpad, _vpad, _hpad, _vpad),
					child: Text(location, style: Theme.of(context).textTheme.body1),
				),
				Container(
					padding: const EdgeInsets.fromLTRB(_hpad, _vpad, _hpad, _vpad),
					child: Row(
						children: <Widget>[
							Text("Likes: $likes", style: Theme.of(context).textTheme.body1)
						],
					),
				)
			],
		);
	}
}