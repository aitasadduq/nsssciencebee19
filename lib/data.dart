import 'models/module.dart';
import 'models/clue.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

const MODULES = const [
  Module(
    id: 'm1',
    title: 'Escape Room',
    logo: 'assets/images/escroom.png',
    guidelines: 'assets/documents/EscapeRoom.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm2',
    title: 'Rube Goldberg Machine',
    logo: 'assets/images/rgm.png',
    guidelines: 'assets/documents/RGM.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm3',
    title: 'Sci-Run',
    logo: 'assets/images/scirun.png',
    guidelines: 'assets/documents/Scirun.pdf',
    hasApp: true,
  ),
  Module(
    id: 'm4',
    title: 'Make n Test',
    logo: 'assets/images/mnt.png',
    guidelines: 'assets/documents/MakenTest.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm5',
    title: 'Bamboo Building',
    logo: 'assets/images/bamboo.png',
    guidelines: 'assets/documents/bamboo bridge \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm6',
    title: 'Speed Programming',
    logo: 'assets/images/prog.png',
    guidelines: 'assets/documents/speed programming \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm7',
    title: 'Chemathon',
    logo: 'assets/images/chemical.png',
    guidelines: 'assets/documents/chemathon \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm8',
    title: 'Gear Grind',
    logo: 'assets/images/GEAR GRIND.png',
    guidelines: 'assets/documents/gear grind \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm9',
    title: 'Mind Maze',
    logo: 'assets/images/mmaze.png',
    guidelines: 'assets/documents/MindMaze.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm10',
    title: 'The Crimeline Road',
    logo: 'assets/images/cl.png',
    guidelines: 'assets/documents/Crimeline.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm11',
    title: 'Medical Mayhem',
    logo: 'assets/images/mm.png',
    guidelines: 'assets/documents/MedicalMayhem.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm12',
    title: 'Mathletics',
    logo: 'assets/images/math.png',
    guidelines: 'assets/documents/Mathletics.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm13',
    title: 'Speed Wiring',
    logo: 'assets/images/speed-wiring.png',
    guidelines: 'assets/documents/speed wiring \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm14',
    title: 'Line Following Robot',
    logo: 'assets/images/robot.png',
    guidelines: 'assets/documents/line following robot \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm15',
    title: 'CADing',
    logo: 'assets/images/cad.png',
    guidelines: 'assets/documents/Cading \'19.pdf',
    hasApp: false,
  ),
];

var clues = [
  [
    Clue(
      id: 0,
      code: 'bamboozled',
      detail: 'Clue 1',
      hint: 'Hint 1',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'terrified',
      detail: 'Clue 2',
      hint: 'Hint 2',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: true,
    ),
    Clue(
      id: 2,
      code: 'petrified',
      detail: 'Clue 3',
      hint: 'Hint 3',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'mortified',
      detail: 'Clue 4',
      hint: 'Hint 4',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'horrified',
      detail: 'Clue 5',
      hint: 'Hint 5',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'splattered',
      detail: 'Clue 6',
      hint: 'Hint 2',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'heckled',
      detail: 'Clue 7',
      hint: 'Hint 3',
      hintViewed: false,
      incomplete: false,
      scored: true,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'fortified',
      detail: 'Clue 8',
      hint: 'Hint 4',
      hintViewed: false,
      incomplete: false,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: 'Clue 9',
      hint: 'Hint 5',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
  [
    Clue(
      id: 0,
      code: 'terrified',
      detail: 'Clue 2',
      hint: 'Hint 2',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'Clue 5',
      hint: 'Hint 5',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'petrified',
      detail: 'Clue 3',
      hint: 'Hint 3',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'fortified',
      detail: 'Clue 8',
      hint: 'Hint 4',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'bamboozled',
      detail: 'Clue 1',
      hint: 'Hint 1',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: 'Clue 7',
      hint: 'Hint 3',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'mortified',
      detail: 'Clue 4',
      hint: 'Hint 4',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'splattered',
      detail: 'Clue 6',
      hint: 'Hint 2',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: 'Clue 9',
      hint: 'Hint 5',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ]
];

var currentClue = 0;

var score = 0.0;

var validCode = "42069";
var endCode = "69420";
var unlocked = false;
var finished = false;
var teamName = '';
var clueSet = 0;
var lastClue = false;

String getBuiltData() {
  String result = teamName + '#' + clueSet.toString() + '#' + score.toString() + '#' + currentClue.toString() + '#' + unlocked.toString() + '#'
  + finished.toString() + '#' + lastClue.toString() + '#';
  for (Clue clue in clues[clueSet]) {
    result += clue.hintViewed.toString() + ',' + clue.incomplete.toString() + ',' + clue.scored.toString() + ':';
  }
  return result.substring(0, result.length - 1);
}

setDataFromString(String input) {
  var firstSplit = input.split('#');
  teamName = firstSplit[0];
  clueSet = int.parse(firstSplit[1]);
  score = double.parse(firstSplit[2]);
  currentClue = int.parse(firstSplit[3]);
  unlocked = firstSplit[4] == 'true';
  finished = firstSplit[5] == 'true';
  lastClue = firstSplit[6] == 'true';
  var cluesString = firstSplit[7].split(':');
  for (int i = 0; i < 9; i++) {
    var clueString = cluesString[i].split(',');
    clues[clueSet][i].hintViewed = clueString[0] == 'true';
    clues[clueSet][i].incomplete = clueString[1] == 'true';
    clues[clueSet][i].scored = clueString[2] == 'true';
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/data.txt');
}

writeToFile() async {
  final file = await _localFile;
  file.writeAsString(getBuiltData());
}

readFromFile() async {
  try {
    final file = await _localFile;
    setDataFromString(await file.readAsString());
  } catch (e) {
    print(e);
  }
}
