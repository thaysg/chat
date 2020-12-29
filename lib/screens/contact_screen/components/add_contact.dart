import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.cancel), onPressed: () {}),
        elevation: 0,
        title: Text('Adiconar Contato'),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.save,
              ))
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          children: [
                            SafeArea(
                              minimum: const EdgeInsets.only(top: 10),
                              top: true,
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  'images/avatar.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText: 'Nome',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.all(20.0),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText: 'Empresa',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.all(20.0),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText: 'Celular',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.all(20.0),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText: 'Telefone',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.all(20.0),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SafeArea(
                              minimum: const EdgeInsets.only(bottom: 10),
                              child: SizedBox(
                                height: 55,
                                width: 500,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  onPressed: () {},
                                  color: Theme.of(context).accentColor,
                                  child: Text(
                                    'Adiconar outro Campo',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
