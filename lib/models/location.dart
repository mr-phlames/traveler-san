import 'location_fact.dart';

class Location {
	final int id;
	final String name;
	final String imagePath;
	final List<LocationFact> facts;
	final String location;
	final String likes;

	Location(this.id, this.name, this.imagePath, this.facts, this.location, this.likes);

	static List<Location> fetchAll() {
		return [
			Location(1, 'Kiyomizu-dera', 'assets/images/1.jpg', [
				LocationFact('Summary', 'Officially Otowa-san Kiyomizu-dera is an independent Buddhist temple in eastern Kyoto.'),
				LocationFact('Architectural Style', 'Japanese Buddhist Architecture'),
				LocationFact('Location', 'Eastern Kyoto, Japan'),
				LocationFact('Fun Fact', 'This is a fun fact, well, did you know that swordsmen use guns sometimes?')
			], "Japan, Kyoto", "320"),
			Location(2, 'Mount Fuji', 'assets/images/2.jpg', [
				LocationFact('Summary', 'An active volcano about 100 km southwest of Japan\'s capital Tokyo; commonly called Fuji-san.'),
				LocationFact('Did you know', 'There are 3 cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya'),
				LocationFact('Location', 'Southwest Tokyo')
			], "Japan", "300"),
			Location(3, 'Dummy Location', 'assets/images/3.jpg', [
				LocationFact('Summary', 'lorem ipsum dolor sit amet sonor ik isar volor danor pi. So kazar novarda manda bish kka lam pakarva'),
				LocationFact('How to get there', 'lorem ipsum dolor sit amet sonor ik isar volor danor pi. So kazar novarda manda bish kka lam pakarva'),
				LocationFact('Fun Fact', 'lorem ipsum dolor sit amet sonor ik isar volor danor pi. So kazar novarda manda bish kka lam pakarva')
			], "Ghana, Accra", "297")
		];
	}

	static fetchByID(int locationID) {
		List<Location> locations = Location.fetchAll();
		for (var i = 0; i < locations.length; i++) {
			if (locations[i].id == locationID) {
				return locations[i];
			}
		}
		return null;
	}
}