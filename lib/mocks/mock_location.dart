import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  static Location FetchAny() {
    return Location(
        name: 'New York City',
        url: 'https://goo.gl/Npy2K8',
        facts: <LocationFact>[
          LocationFact(
            title: 'Location Face 1',
            text: 'This is location fact 1',
          ),
          LocationFact(
            title: 'Location Face 2',
            text: 'This is location fact 2',
          ),
          LocationFact(
            title: 'Location Face 3',
            text: 'This is location fact 3',
          ),
        ]);
  }
}
