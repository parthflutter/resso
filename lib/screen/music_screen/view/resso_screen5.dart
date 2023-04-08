import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/music_screen/provider/resso_provider.dart';


class Resso_screen5 extends StatefulWidget {
  const Resso_screen5({Key? key}) : super(key: key);

  @override
  State<Resso_screen5> createState() => _Resso_screen5State();
}

class _Resso_screen5State extends State<Resso_screen5> {
  Resso_provider?resso_providert,resso_providerf;
  @override
  void initState() {
    super.initState();
    Provider.of<Resso_provider>(context,listen: false).allsong();
  }
  @override
  Widget build(BuildContext context) {
    int ind = ModalRoute.of(context)?.settings.arguments as int;
    resso_providert = Provider.of<Resso_provider>(context, listen: true);
    resso_providerf = Provider.of<Resso_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset("${resso_providerf!.badimg[resso_providert!.i]}", fit: BoxFit.cover),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  size: 35,
                  color: Colors.white,
                ),
                Icon(
                  Icons.comment,
                  size: 35,
                  color: Colors.white,
                ),
                Icon(
                  Icons.share,
                  size: 35,
                  color: Colors.white,
                ),
                Icon(
                  Icons.download,
                  size: 30,
                  color: Colors.white60,
                ),
                Icon(
                  Icons.queue_music,
                  size: 30,
                  color: Colors.white60,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.white60,
                ),
              ],
            ),
            Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              autofocus: true,
              value: 0,
              onChanged: (value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    resso_providert!.previoussong();
                    resso_providert!.preimg();
                  },
                  icon:
                  Icon(Icons.skip_previous, color: Colors.white, size: 35),
                ),
                IconButton(
                  onPressed: () {
                    resso_providerf!.playAudio();
                  },
                  icon: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 35),
                ),
                IconButton(
                  onPressed: () {
                    resso_providerf!.pauseAudio();
                  },
                  icon: Icon(Icons.pause ,
                      color: Colors.white,
                      size: 35),
                ),
                IconButton(
                  onPressed: () {
                    resso_providerf!.nextsong();
                    resso_providerf!.nextimg();
                  },
                  icon: Icon(Icons.skip_next, color: Colors.white, size: 35),
                ),
                IconButton(
                  onPressed: () {
                    resso_providerf!.muteorunmute();
                  },
                  icon: Icon(
                      resso_providert!.ismute
                          ? Icons.volume_off
                          : Icons.volume_up,
                      color: Colors.white,
                      size: 35),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}