import 'package:flutter/material.dart';
import 'package:top_10/Models/UserModel.dart';

class UserItem extends StatelessWidget {
  UserModel userModel;

  UserItem({super.key, required this.userModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color.fromARGB(255, 0, 138, 251),
            child: Text(
              userModel.number,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userModel.name,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  userModel.phone,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 1, 131, 1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
