import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [
                  Colors.lightBlue.shade600,
                  Colors.lightBlue.shade400,
                  Colors.lightBlueAccent,
                ],
              )),
              height: MediaQuery.sizeOf(context).height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/my_profile.jpeg'),
                            radius: 70),
                      ),
                      Text(
                        'Fatemeh Mahdizadeh',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('photos',
                              style: TextStyle(
                                  color: Colors.blue.shade800, fontSize: 18)),
                          const Text('160',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Followers',
                              style: TextStyle(
                                  color: Colors.blue.shade800, fontSize: 18)),
                          const Text('1543',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Follwing',
                              style: TextStyle(
                                  color: Colors.blue.shade800, fontSize: 18)),
                          const Text('250',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('ABOUT',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Divider(
                                height: 2,
                                thickness: 2,
                                color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('POSTS',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: const Divider(
                                height: 2,
                                thickness: 2,
                                color: Colors.transparent),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.phone_android,
                              color: Colors.lightBlue, size: 30),
                          title: Text('Mobile'),
                          subtitle: Text('+93 453580980'),
                          titleTextStyle:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                        ListTile(
                          leading: Icon(Icons.call,
                              color: Colors.lightBlue, size: 30),
                          title: Text('Work'),
                          subtitle: Text('+93 175380537'),
                          titleTextStyle:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                        ListTile(
                          leading: Icon(Icons.email,
                              color: Colors.lightBlue, size: 30),
                          title: Text('Email'),
                          subtitle: Text('fatemehmadizada@gmail.com'),
                          titleTextStyle:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Status'),
                          subtitle: Text('Available'),
                          titleTextStyle:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
