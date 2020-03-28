import 'package:adsmantravel/views/plan_trip/plan_trip.dart';
import 'package:adsmantravel/views/location_detail/location_detail.dart';
import 'package:flutter/material.dart';
import 'views/locations/locations.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';
const PlanTripRoute = '/plan_trip';

class Application extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			onGenerateRoute: _routes(),
			theme: _theme()
		);
	}

	RouteFactory _routes() {
		return (settings) {
			final Map<String, dynamic> arguments = settings.arguments;
			Widget screen;
			switch (settings.name) {
				case LocationsRoute:
					screen = Locations();
					break;
				case LocationDetailRoute:
					screen = LocationDetail(arguments['id']);
					break;
        case PlanTripRoute:
          screen = PlanTrip(arguments['id']);
          break;
				default:
					return null;
			}
			return MaterialPageRoute(builder: (BuildContext context) => screen);
		};
	}

	ThemeData _theme() {
		return ThemeData(
			appBarTheme: AppBarTheme(
				textTheme: TextTheme(title: AppBarTextStyle)
			),
			primarySwatch: Colors.lightBlue,
			textTheme: TextTheme(
				title: TitleTextStyle,
				body1: BodyOneTextStyle,
        headline: HeadingTwoTextStyle
			)
		);
	}
}