import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class DichodicListOneController02 extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  var isPlaying = false.obs;
  var isPaused = false.obs;
  var isStopped = true.obs;
  var duration = Duration.zero.obs;
  var position = Duration.zero.obs;
  var leftCheckboxStates = List<bool>.filled(25, false).obs;
  var rightCheckboxStates = List<bool>.filled(25, false).obs;

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
      await audioPlayer.setSource(AssetSource('DWT-List2.wav'));
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

  int calculateCorrectLeftAnswers() {
    return leftCheckboxStates.where((state) => state).length;
  }

  double calculateCorrectLeftAnswersPercent() {
    return (calculateCorrectLeftAnswers() / 25) * 100;
  }

  int calculateCorrectRightAnswers() {
    return rightCheckboxStates.where((state) => state).length;
  }

  double calculateCorrectRightAnswersPercent() {
    return (calculateCorrectRightAnswers() / 25) * 100;
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
