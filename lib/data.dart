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
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
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
      hint: 'books',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
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
      hint: 'Its name start with H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 7,
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
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
      hint: 'books',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
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
      hint: 'Its name start with H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'bamboozled',
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
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
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'mortified',
      detail: 'I have lots to say but never speak, I open but you cannot walk through me, I have a spine but no bones. Where am I found?',
      hint: 'books',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'horrified',
      detail: 'You’ll need your sunscreen because, You-We',
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
      hint: 'Its name start with H',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
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
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 1,
      code: 'horrified',
      detail: 'A house made up of green glass',
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
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 4,
      code: 'bamboozled',
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'mortified',
      detail: 'University is known for the expanse of knowledge; in NUST there exists a pillar covered with knowledge. Find that pillar',
      hint: 'books',
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
      detail: 'A house made up of green glass',
      hint: 'House of green',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 2,
      code: 'mortified',
      detail: 'University is known for the expanse of knowledge; in NUST there exists a pillar covered with knowledge. Find that pillar',
      hint: 'books',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 3,
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 4,
      code: 'bamboozled',
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'terrified',
      detail: 'Behind 8-2-12',
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 6,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
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
      hint: 'books',
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
      code: 'x3y|x^3y|(x^3)y',
      detail: 'd/dx[0.25(x^4)y] - 0.25(x^4)',
      hint: 'Differential equation(product rule)',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: true,
    ),
    Clue(
      id: 3,
      code: 'bamboozled',
      detail: 'Climb your way down or upto monal',
      hint: 'Basement Café',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 4,
      code: 'terrified',
      detail: 'Behind 8-2-12',
      hint: 'The place where people deal in money',
      hintViewed: false,
      incomplete: true,
      scored: false,
      textToRead: false,
    ),
    Clue(
      id: 5,
      code: 'heckled',
      detail: '33.642983, 72.988081',
      hint: 'Coordinates',
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
      detail: 'A house made up of green glass',
      hint: 'House of green',
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
