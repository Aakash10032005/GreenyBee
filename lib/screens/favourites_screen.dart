import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbackgroundcolour,
      appBar: AppBar(
        title: Center(
          child: Text(
              "Favorites",
          style: TextStyle(
            color: titletextcolour,
          ),),
        ),
        backgroundColor: homescreenbackgroundcolour,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FavoriteCard(
              imageLocation: 'images/ixora_light_pink.jpg',
              name: 'Ixora Light Pink',
              description: 'This is for Ixora Light Pink',
            ),
            SizedBox(height: 16),
            FavoriteCard(
              imageLocation: 'images/madras_thorn.jpg',
              name: 'Madras Thorn',
              description: 'This is for Madras Thorn',
            ),
            SizedBox(height: 16),
            FavoriteCard(
              imageLocation: 'images/pot4.jpeg',
              name: 'Ganesha Face Clay Pot',
              description: 'This is for Ganesha Face Clay Pot',
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String imageLocation;
  final String name;
  final String description;

  const FavoriteCard({
    Key? key,
    required this.imageLocation,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imageLocation,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: boxbordercolour,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(color: Colors.green[300]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
