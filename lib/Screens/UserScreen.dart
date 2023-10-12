import 'package:flutter/material.dart';
import 'package:top_10/Components/UserItem.dart';
import 'package:top_10/Models/UserModel.dart';
import 'package:top_10/Screens/LoginScreen.dart';
import 'package:top_10/Screens/SimpleUserProfile.dart';


class UserScreen extends StatefulWidget {
  static const String screenRoute = 'UserScreen';

  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<int> numbers = [
    1,
    2,
    3,
  ];

  List<UserModel> users = [
    UserModel(number: "1", name: "ELking Felo", phone: "01129046459"),
    UserModel(number: "2", name: "Mariam Wael", phone: "01020304050"),
    UserModel(number: "3", name: "Mario Ashraf", phone: "01023785398"),
    UserModel(number: "4", name: "karol Hany", phone: "01175559923"),
    UserModel(number: "5", name: "Mera Refaat", phone: "01089537294"),
    UserModel(number: "6", name: "Omar Khaled ", phone: "01287349503"),
    UserModel(number: "7", name: "Marina Emad", phone: "01287430054"),
    UserModel(number: "8", name: "Alaa mohamed", phone: "01076302278"),
    UserModel(number: "9", name: "Kyrillos Ayman", phone: "0113908473"),
    UserModel(number: "10", name: "Islam Hassan", phone: "01087239902"),
  ];

  List<Widget> getlistOfItems(List<UserModel> usersC) {
    List<Widget> listItem = [];
    for (int i = 0; i < usersC.length; i++) {
      listItem.add(UserItem(userModel: usersC[i]));
    }

    return listItem;
  }

  UserModel user1 =
      UserModel(number: "1", name: "Marim Wael", phone: "0123456789");

  UserModel user2 = UserModel(number: "2", name: "Mario", phone: "012474664");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 72, 233),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/top-10.png"),
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
          const Icon(
            Icons.favorite,
            size: 35,
            color: Color.fromARGB(255, 243, 45, 31),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Login.screenRoute);
            },
            icon: const Icon(Icons.exit_to_app,
                color: Color.fromARGB(255, 18, 220, 239), size: 35),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var currenUser = users[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleUserProfile(
                      name: currenUser.name, phone: currenUser.phone),
                )),
            child: UserItem(userModel: users[index]),
          );
        },
        itemCount: users.length,
        separatorBuilder: (context, index) => const Divider(
          indent: 30,
          endIndent: 30,
        ),
      ),
    );
  }
}
