import 'package:flutter/material.dart';
import 'more categories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Quiz App Home'),
            SizedBox(
              width: 60,
            ),
            Column(
              children: [
                Icon(Icons.account_circle),
                Text('Profile',
                style: TextStyle(
                  fontSize: 15
                ),)
              ],
            ),
          ],
        ),
      ),
      // body: ListView(
      //   padding: EdgeInsets.all(16.0),
      //   children: [
      //     // ListTile(
      //     //   leading: Icon(Icons.account_circle),
      //     //   title: Text('Account Profile'),
      //     //   onTap: () {
      //     //     // Navigate to Account Profile
      //     //   },
      //     // ),
      //
      //     Card(
      //       child: ListTile(
      //         leading: Icon(Icons.play_arrow),
      //         title: Text('Play Quiz'),
      //         onTap: () {
      //           // Navigate to Play Quiz
      //         },
      //       ),
      //     ),
      //     Divider(),
      //     Card(
      //       child: ListTile(
      //         leading: Icon(Icons.category),
      //         title: Text('More Categories'),
      //         onTap: () {
      //           // Navigate to More Categories
      //         },
      //       ),
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.logout),
      //       title: Text('Logout'),
      //       onTap: () {
      //         // Handle Logout
      //       },
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.settings),
      //       title: Text('Settings'),
      //       onTap: () {
      //         // Navigate to Settings
      //       },
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.info),
      //       title: Text('About'),
      //       onTap: () {
      //         // Navigate to About
      //       },
      //     ),
      //   ],
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Card(
                    child: ListTile(
                      leading: Icon(Icons.play_arrow),
                      title: Text('Play Quiz'),
                      onTap: () {
                        // Navigate to Play Quiz
                      },
                    ),
                  ),
            ),
                Divider(),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.category),
                    title: Text('More Categories'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>CategoriesPage ()),
                      );
                      // Navigate to More Categories
                    },
                  ),
                ),
            SizedBox(
              height: 300,
            ),
            ElevatedButton(onPressed: (){},
                child: Text('Logout')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.settings),
                    Text('Settings'),
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                Column(
                  children: [
                    Icon(Icons.info),
                    Text('About'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

