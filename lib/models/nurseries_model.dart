class Nurseries{
  String imagelocation;
  String name;
  Nurseries({required this.imagelocation, required this.name});
}

List <Nurseries> nurseries = [
  Nurseries(imagelocation: 'images/nursery1.jpeg', name: 'Nursery 1'),
  Nurseries(imagelocation: 'images/nursery2.jpeg', name: 'Nursery 2'),
  Nurseries(imagelocation: 'images/nursery3.jpg', name: 'Nursery 3'),
  Nurseries(imagelocation: 'images/nursery4.jpg', name: 'Nursery 4'),
  Nurseries(imagelocation: 'images/nursery5.jpg', name: 'Nursery 5'),
];

class Nursery{
  String description;
  Nursery({required this.description});
}
List <Nursery> nursery = [
  Nursery(description: "This spacious greenhouse nursery offers a tranquil and controlled environment, ideal for growing a wide range of plants. With its protective shade netting, the nursery ensures that the young plants are shielded from direct sunlight while still receiving sufficient light to promote healthy growth. Rows of neatly arranged seedlings and plants are visible, showcasing the nursery's commitment to precision and care. The calm and structured layout makes it a perfect spot for nurturing plants in their early stages."),
  Nursery(description: "A lively and colorful outdoor nursery that bursts with an array of vibrant flowers and plants. The space is organized into sections, allowing easy access to a variety of plant types, from decorative flowers to garden essentials. Set in the open air, this nursery takes full advantage of natural sunlight to support plant growth. Its picturesque arrangement of blooming flowers, lush greenery, and well-tended soil beds invites customers to stroll through and pick the perfect additions for their gardens or homes."),
  Nursery(description: "A modern and bustling greenhouse nursery, this space is filled with an extensive collection of hanging flower baskets, potted plants, and decorative flora. The use of overhead hanging plants, combined with neatly displayed pots on the ground, creates a vibrant and visually appealing atmosphere. The climate-controlled greenhouse ensures the plants receive the perfect balance of sunlight, water, and temperature, making it an ideal destination for plant enthusiasts. The nursery features a wide variety of flowering plants and greenery, offering something for every type of gardener."),
  Nursery(description: "A vibrant and colorful nursery bursting with a diverse array of plants, from hanging baskets overflowing with vibrant blooms to potted plants showcasing unique textures and colors. The lush greenery and vibrant blooms create a peaceful and inspiring atmosphere, perfect for plant enthusiasts and those seeking a touch of nature."),
  Nursery(description: "A greenhouse overflowing with a vibrant tapestry of plant life, featuring a diverse array of cacti and succulents in various shapes, sizes, and colors. Sunlight streaming through the glass casts a warm glow on the lush greenery, creating a peaceful and inviting atmosphere. The nursery is a haven for plant enthusiasts, offering a unique and unforgettable experience."),
  
];