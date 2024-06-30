import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class Button06controller extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  var isPlaying = false.obs;
  var isPaused = false.obs;
  var isStopped = true.obs;
  var duration = Duration.zero.obs;
  var position = Duration.zero.obs;

  var EXTA01CheckboxStates = List<bool>.filled(25, false).obs;
  var EXTA02CheckboxStates = List<bool>.filled(25, false).obs;
  var EXTB01CheckboxStates = List<bool>.filled(25, false).obs;
  var EXTB02CheckboxStates = List<bool>.filled(25, false).obs;

  @override
  void onInit() {
    super.onInit();
    audioPlayer.setReleaseMode(ReleaseMode.stop);

    audioPlayer.onDurationChanged.listen((d) {
      duration.value = d;
    });

    audioPlayer.onPositionChanged.listen((p) {
      position.value = p;
    });

    audioPlayer.onPlayerComplete.listen((event) {
      isPlaying.value = false;
      isPaused.value = false;
      isStopped.value = true;
      position.value = Duration.zero;
    });

    Future.microtask(() async {
      await audioPlayer.setSource(AssetSource('DoubleDichoticDigits/List 2.wav')); // DoubleDichoticDigits/List 1.wav
    });
  }

  Future<void> play() async {
    await audioPlayer.resume();
    isPlaying.value = true;
    isPaused.value = false;
    isStopped.value = false;
  }

  Future<void> pause() async {
    await audioPlayer.pause();
    isPlaying.value = false;
    isPaused.value = true;
    isStopped.value = false;
  }

  Future<void> replay() async {
    await audioPlayer.seek(Duration.zero);
    await audioPlayer.resume();
    isPlaying.value = true;
    isPaused.value = false;
    isStopped.value = false;
    position.value = Duration.zero;
  }



  int calculateCorrectEXTA01Answers() {
    return EXTA01CheckboxStates.where((state) => state).length;
  }

  double calculateCorrectEXTA01AnswersPercent() {
    return (calculateCorrectEXTA01Answers() / 25) * 100;
  }

  int calculateCorrectEXTA02Answers() {
    return EXTA02CheckboxStates.where((state) => state).length;
  }

  double calculateCorrectEXTA02AnswersPercent() {
    return (calculateCorrectEXTA02Answers() / 25) * 100;
  }







  int calculateCorrectEXTB01Answers() {
    return EXTB01CheckboxStates.where((state) => state).length;
  }

  double calculateCorrectEXTB01AnswersPercent() {
    return (calculateCorrectEXTB01Answers() / 25) * 100;
  }

  int calculateCorrectEXTB02Answers() {
    return EXTB02CheckboxStates.where((state) => state).length;
  }

  double calculateCorrectEXTB02AnswersPercent() {
    return (calculateCorrectEXTB02Answers() / 25) * 100;
  }






  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
