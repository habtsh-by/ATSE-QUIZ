import 'package:flutter/material.dart';

class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final cppQuestionsList = [
  StateQuestion(
    text: "Which of the following is used to define a constant in C++?",
    options: [
      const StateOption(text: "#define", isCorrect: false),
      const StateOption(text: "const", isCorrect: true),
      const StateOption(text: "constant", isCorrect: false),
      const StateOption(text: "static", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "const", isCorrect: true),
  ),
  StateQuestion(
    text: "What is the size of an int data type in C++?",
    options: [
      const StateOption(text: "2 bytes", isCorrect: false),
      const StateOption(text: "4 bytes", isCorrect: true),
      const StateOption(text: "8 bytes", isCorrect: false),
      const StateOption(text: "Depends on the compiler", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "4 bytes", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is the correct syntax for a single-line comment in C++?",
    options: [
      const StateOption(text: "/* comment */", isCorrect: false),
      const StateOption(text: "// comment", isCorrect: true),
      const StateOption(text: "*/ comment /*", isCorrect: false),
      const StateOption(text: "# comment", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "// comment", isCorrect: true),
  ),
  StateQuestion(
    text: "Which feature of OOP is indicated by the concept of encapsulation?",
    options: [
      const StateOption(text: "Binding data and functions together", isCorrect: true),
      const StateOption(text: "Ability to derive class from another class", isCorrect: false),
      const StateOption(text: "Ability to create multiple methods with the same name", isCorrect: false),
      const StateOption(text: "Separating interface from implementation", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Binding data and functions together", isCorrect: true),
  ),
  StateQuestion(
    text: "Which keyword is used to handle exceptions in C++?",
    options: [
      const StateOption(text: "try", isCorrect: true),
      const StateOption(text: "catch", isCorrect: false),
      const StateOption(text: "throw", isCorrect: false),
      const StateOption(text: "exception", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "try", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following cannot be used with the keyword 'class'?",
    options: [
      const StateOption(text: "int", isCorrect: true),
      const StateOption(text: "static", isCorrect: false),
      const StateOption(text: "public", isCorrect: false),
      const StateOption(text: "friend", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "int", isCorrect: true),
  ),
  StateQuestion(
    text: "What does STL stand for in C++?",
    options: [
      const StateOption(text: "Standard Type Library", isCorrect: false),
      const StateOption(text: "Standard Template Library", isCorrect: true),
      const StateOption(text: "System Template Library", isCorrect: false),
      const StateOption(text: "Standard Tools Library", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "Standard Template Library", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is used to exit from a loop in C++?",
    options: [
      const StateOption(text: "exit", isCorrect: false),
      const StateOption(text: "break", isCorrect: true),
      const StateOption(text: "continue", isCorrect: false),
      const StateOption(text: "return", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "break", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is not a type of constructor in C++?",
    options: [
      const StateOption(text: "Default constructor", isCorrect: false),
      const StateOption(text: "Parameterized constructor", isCorrect: false),
      const StateOption(text: "Copy constructor", isCorrect: false),
      const StateOption(text: "Move constructor", isCorrect: true),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "Move constructor", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is not a valid C++ operator?",
    options: [
      const StateOption(text: "::", isCorrect: false),
      const StateOption(text: "?:", isCorrect: false),
      const StateOption(text: "new", isCorrect: false),
      const StateOption(text: "<>", isCorrect: true),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "<>", isCorrect: true),
  ),
  StateQuestion(
    text: "Which keyword is used to create a new data type in C++?",
    options: [
      const StateOption(text: "typedef", isCorrect: false),
      const StateOption(text: "class", isCorrect: true),
      const StateOption(text: "struct", isCorrect: false),
      const StateOption(text: "new", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(text: "class", isCorrect: true),
  ),
  StateQuestion(
    text: "Which of the following is the correct syntax to declare a pointer?",
    options: [
      const StateOption(text: "int* ptr;", isCorrect: true),
      const StateOption(text: "int ptr;", isCorrect: false),
      const StateOption(text: "ptr int*;", isCorrect: false),
      const StateOption(text: "int* ptr[];", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const StateOption(text: "int* ptr;", isCorrect: true),
  ),
];
