import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myntra Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myntra'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child:
                  Image.network('https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/2021/7/16/9f4c5b8a-6f2c-4c9a-8d7e-9b0f3a3b6f2e1626434210885-Desktop-Banner.jpg', fit:
                  BoxFit.cover),
            ),
            Container(
              height: 100,
              child:
                  ListView.builder(scrollDirection:
                  Axis.horizontal, itemCount:
                  10, itemBuilder:
                  (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal:
                      8, vertical:
                      16),
                  child:
                      Column(children:
                      [
                    CircleAvatar(radius:
                    24, backgroundImage:
                    AssetImage('assets/category_$index.jpg')),
                    SizedBox(height:
                    8),
                    Text('Category $index'),
                  ]),
                );
              }),
            ),
            Container(
              height: 200,
              child:
                  Image.network('https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/2021/7/16/9f4c5b8a-6f2c-4c9a-8d7e-9b0f3a3b6f2e1626434210885-Desktop-Banner.jpg', fit:
                  BoxFit.cover),
            ),
            Container(
              height: 300,
              child:
                  GridView.builder(gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:
                  2), itemCount:
                  4, itemBuilder:
                  (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal:
                      8, vertical:
                      16),
                  child:
                      Image.asset('assets/product_$index.jpg', fit:
                      BoxFit.cover),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items:[
        BottomNavigationBarItem(icon:
        Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:
        Icon(Icons.explore),label:'Explore'),
        BottomNavigationBarItem(icon:
        Icon(Icons.star),label:'Insider'),
        BottomNavigationBarItem(icon:
        Icon(Icons.person),label:'Profile')
      ]),
    );
  }
}
