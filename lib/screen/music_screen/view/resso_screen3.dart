import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../ulitis/v.dart';
import '../provider/resso_provider.dart';

class resso_screen3 extends StatefulWidget {
  const resso_screen3({Key? key}) : super(key: key);

  @override
  State<resso_screen3> createState() => _resso_screen3State();
}

class _resso_screen3State extends State<resso_screen3> {
  Resso_provider? resso_providert,resso_providerf;

  @override
  void initState() {
    super.initState();
    Provider.of<Resso_provider>(context,listen: false).initaudio();

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
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("${resso_providerf!.image[music]}", fit: BoxFit.cover),
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
                        resso_providerf!.previoussong();
                      },
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 35,
                      ),
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
                  InkWell(
                      onTap: () {
                        resso_providerf!.nextsong();
                      },
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 35,
                      ),
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
      ),
    );
  }
}
