import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';
import 'package:greenybeenew/models/nurseries_model.dart';
import 'package:greenybeenew/models/plants_model.dart';
import 'package:greenybeenew/models/pots_model.dart';

class CategorySelection extends StatefulWidget {
  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int indexCategory = 0;
  bool isFilled = false;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Padding categorySelection() {
    // list of categories
    List<String> categories = ["Nurseries", "Pots", "Plants"];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  indexCategory = index;
                });
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
              child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 30,
                      color: indexCategory == index
                          ? titletextcolour
                          : Colors.black45,
                      fontWeight:
                          indexCategory == index ? FontWeight.bold : null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildCategoryContent(int index) {
    switch (index) {
      case 0: // Nurseries
        return Padding(
          padding: EdgeInsets.all(15.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // Keep one item per row
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio:
                  2, // Increase this value to decrease the height of the grid item
            ),
            itemCount: nurseries.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        backgroundColor: desccardcolour,
                        title: Text(nurseries[index].name),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                nurseries[index].imagelocation,
                                fit: BoxFit.cover, // Cover the whole grid item
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              nursery[index]
                                  .description, // Assuming you have a description field
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isFilled = !isFilled;
                                  });
                                },
                                icon: Icon(
                                  isFilled ? Icons.favorite_border_outlined : Icons.favorite,
                                  color: isFilled ? Colors.grey : Colors.red,
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: primaryColors, width: 3),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            nurseries[index].imagelocation,
                            fit: BoxFit.cover, // Cover the whole grid item
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            nurseries[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      case 1: // Pots
        return Padding(
          padding: EdgeInsets.all(15.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: pots.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        title: Text(
                          pots[index].name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: desccardcolour,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Show a high-quality product image with rounded corners
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(pots[index]
                                  .imagelocation), // Assuming imageUrl exists
                            ),
                            SizedBox(height: 10),
                            // Display key product details
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    pot[index].description,
                                    textAlign: TextAlign.center,
                                    maxLines: 3, // Limit description lines
                                    //overflow: TextOverflow.ellipsis, // Add ellipsis for long descriptions
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                // Add price information if available
                              ],
                            ),
                          ],
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                child: Text("Add to Cart"),
                                onPressed: () {
                                  // Implement add to cart functionality here
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text("Close"),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: primaryColors, width: 3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.grey[200],
                        child: ClipOval(
                          child: Image.asset(
                            pots[index].imagelocation,
                            fit: BoxFit.cover,
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            pots[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: titletextcolour,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          pots[index].price.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: primaryColors,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      case 2: // Plants
        return Padding(
          padding: EdgeInsets.all(15.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: plants.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        title: Text(
                          plants[index].name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: desccardcolour,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Show a high-quality product image with rounded corners
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(plants[index]
                                  .imagelocation), // Assuming imageUrl exists
                            ),
                            SizedBox(height: 10),
                            // Display key product details
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    plant[index].description,
                                    textAlign: TextAlign.center,
                                    maxLines: 3, // Limit description lines
                                    //overflow: TextOverflow.ellipsis, // Add ellipsis for long descriptions
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                // Add price information if available
                              ],
                            ),
                          ],
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                child: Text("Add to Cart"),
                                onPressed: () {
                                  // Implement add to cart functionality here
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text("Close"),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: primaryColors, width: 3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.grey[200],
                        child: ClipOval(
                          child: Image.asset(
                            plants[index].imagelocation,
                            fit: BoxFit.cover,
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            plants[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: titletextcolour,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          plants[index].price.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: primaryColors,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        categorySelection(),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                indexCategory = index;
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return buildCategoryContent(index);
            },
          ),
        ),
      ],
    );
  }
}
