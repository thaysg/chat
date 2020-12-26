import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _showBotttomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.reply,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.copy,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ));
        });
  }

  _textMessages() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          //padding: const EdgeInsets.symmetric(horizontal: 8.0),
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).accentColor),
            color: Colors.grey[100],
          ),
          child: Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.emoji_emotions,
                    color: Colors.blueGrey[500],
                    size: 20,
                  ),
                  onPressed: () {}),
              Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Digite uma mensagem'),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.attach_file,
                    color: Colors.blueGrey[500],
                    size: 20,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.camera,
                    color: Colors.blueGrey[500],
                    size: 20,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).accentColor),
              color: Colors.grey[100],
            ),
            child: IconButton(
                icon: Icon(
                  Icons.send,
                  size: 20,
                ),
                onPressed: () {}))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'John',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.video_call,
                        size: 30,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                      onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    child: ListView.builder(
                        itemCount: 5,
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  SafeArea(
                                    minimum: const EdgeInsets.only(left: 15),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.reply,
                                          color: Colors.black54,
                                          size: 30,
                                        ),
                                        onPressed: () {}),
                                  ),
                                  GestureDetector(
                                    onLongPress: () {
                                      _showBotttomSheet();
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .75,
                                      margin: EdgeInsets.fromLTRB(35, 8, 0, 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                        color: Color(0xffD1E8FF),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('19:05'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Mensagem entre contatos pare teste da interface,'
                                            'testar o overflow do texto',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onLongPress: () {
                                      _showBotttomSheet();
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .75,
                                      margin: EdgeInsets.fromLTRB(0, 8, 30, 8),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('19:30'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Mensagem entre contatos pare teste da interface,'
                                            'testar o overflow do texto',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SafeArea(
                                    minimum: const EdgeInsets.only(right: 15),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.reply,
                                          color: Colors.black54,
                                          size: 30,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ],
                              )
                            ],
                          );
                        }),
                  )),
            ),
            _textMessages()
          ],
        ),
      ),
    );
  }
}
