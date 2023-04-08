import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Resso_provider extends ChangeNotifier{
  AssetsAudioPlayer? assetsAudioPlayer;
  bool ismute = false;
  bool icon = false;

  List artist = [
    "assets/images/pani.jpg",
    "assets/images/nehu.jpg",
    "assets/images/genda.jpg",
    "assets/images/man.jpg",
  ];

  List artistname = [
    "Badshah",
    "Neha kakkar",
    " Baadsaah",
    "King",
  ];

  List artistSubject = [
    "Rapper",
    "Singer",
    "Rapper",
    "Rapper",
  ];

  List SingerSong = [
    "assets/audios/mann.mp3",
    "assets/audios/apna.mp3",
    "assets/audios/company.mp3",
    "assets/audios/ek.mp3",
    "assets/audios/woh.mp3",
    "assets/audios/le.mp3",
  ];

  List image = [
    "assets/images/man.jpg",
    "assets/images/apna.jpg",
    "assets/images/company.jpg",
    "assets/images/ek.jpg",
    "assets/images/woh.jpg",
    "assets/images/lehnga.jpg",
  ];

  List Songname= [
    "Mann Meri Jaan",
    "Apna bana le..",
    "Comapny",
    "Ek din pyar",
    "Woh",
    "Lehnga",
  ];

  List subjectname = [
    "king",
    "arijit sing",
    "Emiway bantai",
    "Mc stan",
    "ikka | dino | badshah",
    "Jass manek",
  ];

  void initaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    // assetsAudioPlayer!.open(Playlist(audios: songss),
    //     autoStart: false, showNotification: true);
  }

  Future<void> playmusic() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> muteorunmute() async {
    await assetsAudioPlayer!.setVolume(ismute ? 1 : 0);
    ismute = !ismute;
    notifyListeners();
  }



  void playAudio()
  {
    assetsAudioPlayer!.play();
  }
  void pauseAudio()
  {
    assetsAudioPlayer!.pause();
  }

  List subname = [
    "Badshah | Aashtha gill",
    "Badshah | Nikhita Gandhi",
    "Badshah | Aashtha gill",
    "Badshah",
    "Badshah",
    "Badshah",
  ];

  List name = [
    "Pani Pani",
    "Jugnu",
    "Dj Wale Babu",
    "Mercy",
    "Tabahi",
    "Genda phool",
  ];

  List badsong = [
    "assets/audios/bad1.mp3",
    "assets/audios/jugnu.mp3",
    "assets/audios/dj.mp3",
    "assets/audios/mercy.mp3",
    "assets/audios/tabahi.mp3",
    "assets/audios/genda.mp3",
  ];

  List badimg = [
    "assets/images/pani.jpg",
    "assets/images/jugnu.jpg",
   "assets/images/nehu.jpg",
  "assets/images/arijit.jpg",
   "assets/images/woh.jpg",
    "assets/images/genda.jpg",
  ];

  void allsong() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(PlayList(audios: badsong),
        autoStart: false, showNotification: true);
  }
  Future<void> nextsong() async {
    icon = true;
    await assetsAudioPlayer!.next();
    notifyListeners();
  }
  Future<void> previoussong() async {
    icon = true;
    await assetsAudioPlayer!.previous();
    notifyListeners();
  }
  int i=0;

  void nextimg()
  {
    i++;
    notifyListeners();
  }
  void preimg()
  {
    i--;
    notifyListeners();
  }

}

PlayList({required List audios}) {
}
