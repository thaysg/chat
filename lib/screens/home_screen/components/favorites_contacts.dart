import 'package:chat/screens/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';

class FavoritesContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favoritos',
                  style: TextStyle(
                      color: Color(0xff3E5FF5),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: Color(0xff3E5FF5),
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage('images/avatar.png'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'John',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
