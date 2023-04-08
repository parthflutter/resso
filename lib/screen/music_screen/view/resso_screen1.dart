import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/ulitis/v.dart';
import '../provider/resso_provider.dart';

class Resso_screen1 extends StatefulWidget {
  const Resso_screen1({Key? key}) : super(key: key);

  @override
  State<Resso_screen1> createState() => _Resso_screen1State();
}

class _Resso_screen1State extends State<Resso_screen1> {
  Resso_provider? resso_providert, resso_providerf;

  @override
  Widget build(BuildContext context) {
    resso_providert = Provider.of<Resso_provider>(context, listen: true);
    resso_providerf = Provider.of<Resso_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black, size: 25),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Search",
                                style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.music_note,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.shade200),
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer)
                                ], shape: BoxShape.circle, color: Colors.red),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Your story",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/images/l.jpeg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Your STOD",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/images/yoyo.jpg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Honey Singer",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/images/nehu.jpg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Neha Kakar",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/images/man.jpg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Man meri jaan",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Bollywood",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 203,
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1),
                    itemCount: resso_providerf!.artist.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'resso_screen4',
                                arguments: index);
                          },
                          child: click(index));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pick 'n' Mix",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 600,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            music = index;
                            Navigator.pushNamed(context, 'resso_screen3');
                          },
                          child: click(index));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, mainAxisExtent: 300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget click(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'resso_screen4');
          },
          child: Container(
            height: 150,
            width: 120,
            color: Colors.white,
            child: Image.asset("${resso_providerf!.artist[index]}",
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${resso_providerf!.artist[index]}",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "${resso_providerf!.artistSubject[index]}",
          style: TextStyle(
            color: Colors.white60,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }

  Widget ganaa(int index) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          color: Colors.yellow,
          child: Image.asset(
            "${resso_providerf!.image[index]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${resso_providerf!.name[index]}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${resso_providerf!.subjectname[index]}",
              style: TextStyle(color: Colors.white60),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
