import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbackgroundcolour,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            // Profile Picture and Username
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/Account_Person.png'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aakash Gurumurthi',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('aakash@gmail.com', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Order History'),
              onTap: () {
                // Navigate to order history page
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Saved Items'),
              onTap: () {
                // Navigate to saved items page
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Addresses'),
              onTap: () {
                // Navigate to addresses page
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment Methods'),
              onTap: () {
                // Navigate to payment methods page
              },
            ),
            Divider(),

            // Settings and logout button
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle logout action
              },
            ),
          ],
        ),
      ),
    );
  }
}
