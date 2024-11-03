class Plants{
  String imagelocation;
  String name;
  String price;
  Plants({required this.imagelocation, required this.name, required this.price});
}

List <Plants> plants = [
  Plants(imagelocation: 'images/ixora_light_pink.jpg', name: 'Ixora Light Pink',price: '50.00'),
  Plants(imagelocation: 'images/madras_thorn.jpg', name: 'Madras Thorn',price: '35.00'),
  Plants(imagelocation: 'images/royal_jasmine.jpg', name: 'Royal Jasmine',price: '100.00'),
  Plants(imagelocation: 'images/pedilanthus.jpg', name: 'Pedilanthus',price: '65.00'),
  Plants(imagelocation: 'images/mahogany.jpg', name: 'Mohagany',price: '50.00'),
  Plants(imagelocation: 'images/malabar_plum.jpg', name: 'Malabar Plum',price: '70.00'),
];

class Plant{
  String description;
  Plant({required this.description});
}
List <Plant> plant = [
  Plant(description: "This is for Plant 1."),
  Plant(description: "This is for Plant 2."),
  Plant(description: "This is for Plant 3."),
  Plant(description: "This is for Plant 4."),
  Plant(description: "This is for Plant 5"),
  Plant(description: "This is for Plant 6."),
];
/*
List <Plant> plant = [
  Plant(description: "Ixora Light Pink is a beautiful flowering plant that adds vibrant color to your garden or home. Its clusters of light pink flowers bloom throughout the year, making it a popular choice for ornamental gardening."),
  Plant(description: "Madras Thorn, also known as Manila Tamarind, is a versatile plant with striking foliage. It’s perfect for gardens and can also be grown as a bonsai. Its twisted branches and thorny stems make it a unique addition to your plant collection."),
  Plant(description: "Royal Jasmine is known for its fragrant white flowers that bloom profusely. This plant is ideal for outdoor gardens and can also be grown in pots. Its pleasant scent and elegant appearance make it a garden favorite."),
  Plant(description: "Pedilanthus is a hardy plant with zigzag stems and variegated leaves. It’s low-maintenance and perfect for both indoor and outdoor settings. This plant is known for its resilience and unique appearance."),
  Plant(description: "Mahogany is a fast-growing tree that is highly valued for its wood. It’s also grown as an ornamental plant due to its large, shiny leaves and dense foliage. Perfect for gardens and large outdoor spaces."),
  Plant(description: "Malabar Plum, also known as Jamun, is a tropical fruit tree known for its sweet and tangy fruits. The tree has glossy green leaves and can be a beautiful and productive addition to your garden."),
];*/