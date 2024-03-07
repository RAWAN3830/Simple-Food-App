class SaladData {
  final String? name;
  final String? time;
  final String? image;
  final double? rate;
  final double? price;
  final String? plate;

  SaladData({
    required this.name,
    required this.time,
    required this.image,
    required this.rate,
    required this.price,
    required this.plate,
  });
}

List<SaladData> SaladDetails = [
  SaladData(
    name: 'AvacadoSalad',
    time: '20 min',
    image: 'assets/images/salad1.jpg',
    rate: 3.4,
    price: 10.00,
    plate: "\nFresh Avocado,Shrimps Salad With lettuce green mix,"
        "\ncherry tomatoes,herbs and olive oil,lemon dressing,"
        "\nhealthy food...",
  ),
  SaladData(
      name: 'kiwi Salad',
      time: '16 min',
      image: 'assets/images/h6.jpg',
      rate: 4.4,
      price: 50.00,
      plate: "\nFruit salad is consisting of various kinds of fruit,"
          "\nsometimes served in a liquid, either their juices "
          "\nIn different forms, fruit salad ..."),
  SaladData(
      name: 'cucumberSalad',
      time: '25min',
      image: 'assets/images/new_salad3.png',
      rate: 4.4,
      price: 15.00,
      plate: "\nSlicing cucumbers make the best cucumber salad."
          "\nwe recommend using a seedless variety, "
          "\nsuch as English cucumbers..."),
  SaladData(
      name: 'Egg Salad',
      time: '18min',
      image: 'assets/images/h3.jpeg',
      rate: 4.0,
      price: 30.00,
      plate: "\nEgg salad is a dish consisting of chopped hard-boiled,"
          "\nmustard, and mayonnaise, "
          "\nand vegetables often including ingredients..."),
  SaladData(
    name: 'Tomato Salad',
    time: '21min',
    image: 'assets/images/new_salad4.png',
    rate: 4.4,
    price: 40.00,
    plate: "\nThe tomato fruit is globular or ovoid. Botanically,"
        "\nthe fruit exhibits all of the common of berries,"
        "\nsimple fleshy fruit...",
  )
];
