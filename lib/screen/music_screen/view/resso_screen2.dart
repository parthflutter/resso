import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/music_screen/provider/resso_provider.dart';

class resso_screen2 extends StatefulWidget {
  const resso_screen2({Key? key}) : super(key: key);

  @override
  State<resso_screen2> createState() => _resso_screen2State();
}

class _resso_screen2State extends State<resso_screen2> {
  Resso_provider? resso_providert, resso_providerf;

  @override
  void initState() {
    super.initState();
    Provider.of<Resso_provider>(context, listen: false).initaudio();
  }

  @override
  Widget build(BuildContext context) {
    resso_providert = Provider.of<Resso_provider>(context, listen: true);
    resso_providerf = Provider.of<Resso_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "For You",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Expanded(child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("assets/images/man.jpg", fit: BoxFit.cover),
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
                  InkWell(
                    onTap: () {
                      resso_providert!.playmusic();
                    },
                    child: Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                        resso_providert!.icon ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 35),
                  ),
                  InkWell(
                      onTap: () {
                        resso_providerf!.playmusic();
                      },
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 35,
                      )),
                  IconButton(
                    onPressed: () {
                      resso_providert!.muteorunmute();
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
    ],
    ),
      ),
      ),
    );
  }
}