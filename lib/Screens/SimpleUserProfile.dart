import 'package:flutter/material.dart';
import 'package:top_10/Screens/UserScreen.dart';

class SimpleUserProfile extends StatelessWidget {
  String name;
  String phone;
  SimpleUserProfile({super.key, required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 23, 72, 233),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, UserScreen.screenRoute);
            },
          ),
          title: const Text(
            "Top Ten",
            style: TextStyle(
                color: Color.fromARGB(255, 246, 226, 54),
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image.asset(
                "images/top-10.png",
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(255, 158, 248, 245),
              child: ClipOval(
                child: Icon(
                  Icons.person,
                  size: 130,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abril Fatface',
                    fontSize: 45,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontFamily: 'Qwitcher Grypen',
                    fontSize: 40,
                    color: Color.fromARGB(255, 255, 225, 0),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              //color: Colors.white,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    phone,
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 0, 46, 249),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              //color: Colors.white,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "$name@gmail.com",
                    style: const TextStyle(
                      fontSize: 21,
                      color: Color.fromARGB(255, 0, 46, 249),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              //color: Colors.white,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.link),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "https://linkedin/$name.com",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 46, 249),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              //color: Colors.white,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: const Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sohag, Egypt",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 0, 46, 249),
                      fontWeight: FontWeight.w900,
                    ),
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
