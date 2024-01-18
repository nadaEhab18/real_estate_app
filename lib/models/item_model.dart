class Item {
  final String? title;
  final String? category;
  final String? thumb_url;
  final String? price;
  final String? location;

  Item(this.title, this.category, this.thumb_url, this.price, this.location);

  static List<Item> recommendation = [
    Item('Modern Housing For Renting ', 'House',
        'assets/images/modern_house.jpg', '2500', 'Georgia , USA'),
    Item('Big Villa ', 'Villa', 'assets/images/villa.jpg', '3500',
        'Miami , USA'),
    Item('Small House ', 'House', 'assets/images/small_house.jpg', '4500',
        'Wesex , London'),
    Item('Luxor Apartement ', 'Apartement',
        'assets/images/luxor_apartmenet.jpg', '5500', 'New York , USA'),
  ];

  static List<Item> nearby = [
    Item('Province House ', 'House', 'assets/images/house.jpg', '250',
        'Tunis , Tunisia'),
    Item('Small Villa ', 'Villa', 'assets/images/small_villa.jpg', '350',
        'Tunis , Tunisia'),
    Item('Family House ', 'House', 'assets/images/family_house.jpg', '450',
        'Manouba , Tunis'),
    Item('Student Apartement ', 'Apartement', 'assets/images/student_house.jpg',
        '550', 'Kef , Tunis'),
  ];
}
