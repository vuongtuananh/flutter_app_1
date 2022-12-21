import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  static Location FetchAny() {
    return Location(
        name: 'New York City',
        url:
            'https://www.dogtime.com/assets/uploads/2011/03/puppy-development-1280x720.jpg',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text:
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm',
          ),
          LocationFact(
            title: 'How to Get There',
            text:
                'Kyoto airport, with several terminals, is located 15 km south of the city and is also known as Kyoto, Kyoto can also be reached by transport kinks from other regional airports',
          ),
        ]);
  }
}
