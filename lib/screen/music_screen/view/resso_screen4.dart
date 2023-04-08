import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/resso_provider.dart';


class resso_screen4 extends StatefulWidget {
  const resso_screen4({Key? key}) : super(key: key);

  @override
  State<resso_screen4> createState() => _resso_screen4State();
}

class _resso_screen4State extends State<resso_screen4> {
  Resso_provider? resso_providert, resso_providerf;


  @override
  Widget build(BuildContext context) {
     resso_providert= Provider.of<Resso_provider>(context, listen: true);
    resso_providerf = Provider.of<Resso_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          actions: [
            Icon(Icons.settings,color: Colors.white,)
          ],
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: resso_providerf!.badimg.length,
            itemBuilder: (context, index) {
              return InkWell(onTap: () {resso_providert!.allsong();
                Navigator.pushNamed(context, 'Resso_screen5' ,arguments: index);
              },child: bad(index));
            },
          ),
        ),
      ),
    );
  }

  Widget bad(int inedx) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "${resso_providerf!.badimg[inedx]}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${resso_providerf!.name[inedx]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "${resso_providerf!.subname[inedx]}",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Icon(
              Icons.more_vert,
              size: 35,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(color: Colors.white),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}