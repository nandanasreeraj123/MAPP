import 'package:flutter/material.dart';

class PortalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'M-ACE',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                TopBar(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.filter_list,color: Colors.deepPurple,),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Continents',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7)),
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Sections',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7.5)),
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Regions',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7.5)),
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: Colors.black12,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    hintText: 'Search',
                                    contentPadding: EdgeInsets.all(2)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 7,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Ieees(
                    ieee: "IEEE SB CET",
                    loc: "Kerala Section 10",
                    web: "www.ieeesb.org"),
                Ieees(
                    ieee: "IEEE SB CEC",
                    loc: "Kerala Section 11",
                    web: "www.ieeesbcet.org"),
                Ieees(
                    ieee: "IEEE SB CEB",
                    loc: "Kerala Section 12",
                    web: "www.ieeesbsct.org"),
                Ieees(
                    ieee: "IEEE SB CES",
                    loc: "Kerala Section 13",
                    web: "www.ieeesborn.org"),
                Ieees(
                    ieee: "IEEE SB CET",
                    loc: "Kerala Section 16",
                    web: "www.ieeesb.org"),
                Ieees(
                    ieee: "IEEE SB CEM",
                    loc: "Kerala Section 17",
                    web: "www.ieeesb.org"),
                Ieees(
                    ieee: "IEEE SB CCE",
                    loc: "Kerala Section 10",
                    web: "www.ieeesb.org"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'Docs',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.circular(15),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text('Portal',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            color: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'Resources',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class Ieees extends StatelessWidget {
  const Ieees({
    Key key,
    this.ieee,
    this.web,
    this.loc,
  }) : super(key: key);
  final String ieee, web, loc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CircleAvatar(
            backgroundColor: Colors.deepPurple,
            radius: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('$ieee',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('$web', style: TextStyle(color: Colors.black45)),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('$loc'),
              ),
            ]),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Icon(
                  Icons.pin_drop,
                  color: Colors.deepPurple,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Icon(Icons.phone_android)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
