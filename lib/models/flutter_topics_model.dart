import 'package:flashcards_quiz/models/layout_questions_model.dart';
import 'package:flashcards_quiz/models/naviagation_questions_model.dart';
import 'package:flashcards_quiz/models/widget_questions_model.dart';
import 'package:flashcards_quiz/models/state_questions_model.dart';
import 'package:flashcards_quiz/models/nationality.dart';
import 'package:flutter/cupertino.dart';
import 'package:flashcards_quiz/models/c++.dart';
import 'package:flashcards_quiz/models/exitmodel1.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "Widgets",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "State Management",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "Navigation and Routing",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "Layouts and UI",
    topicQuestions: layOutQuestionsList,
  ),
  FlutterTopics(
    id: 4,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "Nationality",
    topicQuestions: ethiopiaQuestionsList,
  ),
  FlutterTopics(
    id:5 ,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "c++",
    topicQuestions: cppQuestionsList,
  ),
  FlutterTopics(
    id:6 ,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_circle,
    topicName: "ExitModel1",
    topicQuestions: QuestionsList,
  ),
];
