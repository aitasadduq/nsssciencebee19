import 'models/module.dart';
import 'models/clue.dart';

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
  Clue(
    id: 0,
    code: 'bamboozled',
    detail: 'Clue 1',
    hint: 'Hint 1',
    hintViewed: false,
    incomplete: true,
    scored: false,
    textToRead: false,
  ),
  Clue(
    id: 1,
    code: 'terrified',
    detail: 'Clue 2',
    hint: 'Hint 2',
    hintViewed: false,
    incomplete: true,
    scored: false,
    textToRead: true,
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
    code: 'mortified',
    detail: 'Clue 4',
    hint: 'Hint 4',
    hintViewed: false,
    incomplete: true,
    scored: false,
    textToRead: false,
  ),
  Clue(
    id: 4,
    code: 'horrified',
    detail: 'Clue 5',
    hint: 'Hint 5',
    hintViewed: false,
    incomplete: true,
    scored: false,
    textToRead: false,
  ),
];

var currentClue = 0;

var score = 0.0;

var validCode = "42069";
var unlocked = false;
var teamName;