import 'models/module.dart';
import 'models/clue.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

const MODULES = const [
  Module(
    id: 'm1',
    title: 'Escape Room',
    guidelines: 'assets/documents/EscapeRoom.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm2',
    title: 'Rube Goldberg Machine',
    guidelines: 'assets/documents/RGM.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm3',
    title: 'Sci-Run',
    guidelines: 'assets/documents/Scirun.pdf',
    hasApp: true,
  ),
  Module(
    id: 'm4',
    title: 'Make n Test',
    guidelines: 'assets/documents/MakenTest.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm5',
    title: 'Bamboo Building',
    guidelines: 'assets/documents/bamboo bridge \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm6',
    title: 'Speed Programming',
    guidelines: 'assets/documents/speed programming \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm7',
    title: 'Chemathon',
    guidelines: 'assets/documents/chemathon \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm8',
    title: 'Gear Grind',
    guidelines: 'assets/documents/gear grind \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm9',
    title: 'Mind Maze',
    guidelines: 'assets/documents/MindMaze.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm10',
    title: 'The Crimeline Road',
    guidelines: 'assets/documents/Crimeline.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm11',
    title: 'Medical Mayhem',
    guidelines: 'assets/documents/MedicalMayhem.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm12',
    title: 'Mathletics',
    guidelines: 'assets/documents/Mathletics.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm13',
    title: 'Speed Wiring',
    guidelines: 'assets/documents/speed wiring \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm14',
    title: 'Line Following Robot',
    guidelines: 'assets/documents/line following robot \'19.pdf',
    hasApp: false,
  ),
  Module(
    id: 'm15',
    title: 'CADing',
    guidelines: 'assets/documents/Cading \'19.pdf',
    hasApp: false,
  ),
];

var clues = [
  [
    Clue(
      id: 0,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'terrified',
      detail: 'When did money start Growing on trees?',
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'mortified',
      detail: 'I have lots to say but never speak, I open but you cannot walk through me, I have a spine but no bones. Where am I found?',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'horrified',
      detail: 'I’m a house, but the beings that live in me are coloured green',
      hint: 'House of green',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'splattered',
      detail: 'I give space to something that can fly without wings',
      hint: 'Its name starts with an H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: 'Inside the school of chill mahol and engineering, you’ll have to go in circle, or go around',
      hint: 'SCME',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
  [
    Clue(
      id: 0,
      code: 'mortified',
      detail: 'I have lots to say but never speak, I open but you cannot walk through me, I have a spine but no bones. Where am I found?',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'I’m a house, but the beings that live in me are coloured green',
      hint: 'House of green',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'splattered',
      detail: 'I give space to something that can fly without wings',
      hint: 'Its name starts with an H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 7,
      code: 'terrified',
      detail: 'When did money start Growing on trees?',
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: 'Inside the school of chill mahol and engineering, you’ll have to go in circle, or go around',
      hint: 'SCME',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
  [
    Clue(
      id: 0,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'mortified',
      detail: 'Given that, theta=in heaven, find us',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'horrified',
      detail: 'I’m a house, but the beings that live in me are coloured green',
      hint: 'House of green',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'splattered',
      detail: 'I give space to something that can fly without wings',
      hint: 'Its name starts with an H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 7,
      code: 'terrified',
      detail: 'When did money start Growing on trees?',
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: 'Inside the school of chill mahol and engineering, you’ll have to go in circle, or go around',
      hint: 'SCME',
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
      detail: 'Behind 8-2-12',
      hint: 'Convert the numbers into alphabets i.e A=1, B=2',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
      hint: 'Greenhouse Effect',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 4,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: 'Your destination lies on the head of a money spatter',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'mortified',
      detail: 'Given that, theta=in heaven, find us',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'splattered',
      detail: 'I have a big H printed on my face and people walk over me all the time',
      hint: 'It’s under the sky near the playground',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: '… -.-. -- . Tuck Shop',
      hint: 'Morse Code',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
  [
    Clue(
      id: 0,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
      hint: 'Greenhouse Effect',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'mortified',
      detail: 'University is known for the expanse of knowledge; in NUST there exists a pillar covered with knowledge. Find that pillar',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 4,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'terrified',
      detail: 'Behind 8-2-12',
      hint: 'Convert the numbers into alphabets i.e A=1, B=2',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'heckled',
      detail: 'Your destination lies on the head of a money spatter',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'splattered',
      detail: 'I have a big H printed on my face and people walk over me all the time',
      hint: 'It’s under the sky near the playground',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: '… -.-. -- . Tuck Shop',
      hint: 'Morse Code',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
  [
    Clue(
      id: 0,
      code: 'mortified',
      detail: 'University is known for the expanse of knowledge; in NUST there exists a pillar covered with knowledge. Find that pillar',
      hint: 'Where\'d you go to read books?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'petrified',
      detail: 'The place where the boss resides',
      hint: 'Rector',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 's3h|s^3h|(s^3)h',
      detail: 'd/dx[0.25(s^4)h] - 0.25(s^4)',
      hint: 'Do you want to study Social Sciences?',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 3,
      code: 'bamboozled',
      detail: 'Climb your way up or maybe down to the Monal of NUST',
      hint: 'One of the Concordias, nearest to the library',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'terrified',
      detail: 'Behind 8-2-12',
      hint: 'Convert the numbers into alphabets i.e A=1, B=2',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: 'Your destination lies on the head of a money spatter',
      hint: 'See too ATM',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'splattered',
      detail: 'I have a big H printed on my face and people walk over me all the time',
      hint: 'It’s under the sky near the playground',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
      hint: 'Greenhouse Effect',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 8,
      code: 'shackled',
      detail: '… -.-. -- . Tuck Shop',
      hint: 'Morse Code',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
  ],
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
