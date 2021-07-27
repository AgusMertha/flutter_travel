class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel_1.jpg',
    name: 'Imperial Hotel',
    address: '404 Great St',
    price: 175
  ),
  Hotel(
    imageUrl: 'assets/images/hotel_2.jpg',
    name: 'Luxury Hotel',
    address: '200 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel_3.jpg',
    name: 'Wild Ran Hotel',
    address: '403 Great St',
    price: 240,
  ),
];