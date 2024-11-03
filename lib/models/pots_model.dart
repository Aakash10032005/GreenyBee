class Pots{
  String imagelocation;
  String name;
  String price;
  Pots({required this.imagelocation, required this.name, required this.price});
}

List <Pots> pots = [
  Pots(imagelocation: 'images/pot1.jpeg', name: 'White Plastic Flower Pot',price: '150.00'),
  Pots(imagelocation: 'images/pot2.jpeg', name: 'Designer Clay Pot',price: '200.00'),
  Pots(imagelocation: 'images/pot3.jpeg', name: 'Yellow Ceramic Flower Pot',price: '180.00'),
  Pots(imagelocation: 'images/pot4.jpeg', name: 'Ganesha Face Clay Pot',price: '320.00'),
  Pots(imagelocation: 'images/pot5.jpeg', name: 'Plastic Hanging Plant Pot',price: '100.00'),
  Pots(imagelocation: 'images/pot6.jpg', name: 'Hand Carved Wooden Plant Pot',price: '450.00'),
];

class Pot{
  String description;
  Pot({required this.description});
}
List <Pot> pot = [
  Pot(description: "This is for Pot 1."),
  Pot(description: "This is for Pot 2."),
  Pot(description: "This is for Pot 3."),
  Pot(description: "This is for Pot 4."),
  Pot(description: "This is for Pot 5."),
  Pot(description: "This is for Pot 6."),
];
/*
List <Pot> pot = [
  Pot(description: "The White Plastic Flower Pot combines simplicity with style, making it a versatile choice for any indoor or outdoor space. Its clean white color and smooth, matte finish blend seamlessly with various décor styles. Made from high-quality plastic, this lightweight and durable pot is easy to move and can withstand the elements.Designed for small to medium-sized plants, it features drainage holes to prevent overwatering and promote healthy growth. Whether adorning a living room, kitchen windowsill, patio, or balcony, this pot adds a touch of elegance while showcasing the natural beauty of your plants."),
  Pot(description: "The Designer Clay Pot brings an artistic touch to your indoor or outdoor space. Crafted from high-quality clay, it features intricate designs that add character and charm to any setting. Its natural, earthy tones and textured finish complement various décor styles, from rustic to contemporary. This pot is ideal for small to medium-sized plants and offers excellent breathability, promoting healthy root growth. Durable and sturdy, the Designer Clay Pot withstands the elements while providing a stable home for your plants. Perfect for enhancing your living room, garden, or patio, it combines functionality with aesthetic appeal, making it a beautiful addition to any plant collection."),
  Pot(description: "The Yellow Ceramic Flower Pot is a vibrant addition to any space. Its glossy finish and bright color bring a pop of joy to your décor. Made from high-quality ceramic, it is durable and perfect for indoor plants."),
  Pot(description: "This Ganesha Face Clay Pot is a unique piece that combines spirituality with art. Crafted with care, its detailed design brings a sacred ambiance to your garden or home. Ideal for medium-sized plants, it offers both aesthetic appeal and functional design."),
  Pot(description: "The Plastic Hanging Plant Pot is perfect for small spaces. It’s lightweight, durable, and comes with a strong hanging mechanism. Ideal for trailing plants, it adds greenery to your space without taking up floor space."),
  Pot(description: "This Hand Carved Wooden Plant Pot is a work of art. Each piece is unique, carved by skilled artisans from high-quality wood. It’s perfect for adding a rustic touch to your indoor or outdoor spaces."),
];*/