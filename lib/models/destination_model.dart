import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
   List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/street_food.jpg',
    name: 'Street food around place',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/street_musician.jpg',
    name: 'music along the way',
    type: 'Sightseeing Tour',
    startTimes: ['15:30 pm', '08:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/tokyo.jpg',
    city: 'Tokyo',
    country: 'Japan',
    description: 'Visit Tokyo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/madrid.jpg',
    city: 'Madrid',
    country: 'Spain',
    description: 'Visit Madrid for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/seoul.jpg',
    city: 'Seoul',
    country: 'South Korea',
    description: 'Visit Seoul for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/london.jpg',
    city: 'London',
    country: 'United Kingdom',
    description: 'Visit London for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];