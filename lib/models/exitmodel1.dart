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

final QuestionsList = [
  StateQuestion(
    text: "Which one of the following are the general tasks in almost all code generators?",
    options: [
      const StateOption(text: "Instruction selection", isCorrect: false),
      const StateOption(text: "Register allocation and assignment", isCorrect: false),
      const StateOption(text: "Instruction ordering", isCorrect: false),
      const StateOption(text: "All", isCorrect: true),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "All", isCorrect: true),
  ),
  StateQuestion(
    text: "A transaction in which either all of the database actions occur or none of them does is called:",
    options: [
      const StateOption(text: "Atomicity", isCorrect: true),
      const StateOption(text: "Consistency", isCorrect: false),
      const StateOption(text: "Isolation", isCorrect: false),
      const StateOption(text: "Durability", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Atomicity", isCorrect: true),
  ),
  StateQuestion(
    text: "The degrees of success of the agent is measured by:",
    options: [
      const StateOption(text: "Its Perception", isCorrect: false),
      const StateOption(text: "Its Performance measure", isCorrect: true),
      const StateOption(text: "Its action", isCorrect: false),
      const StateOption(text: "Its prior knowledge", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Its Performance measure", isCorrect: true),
  ),
  StateQuestion(
    text: "Among the following one helps to resolve internet name into IP Address:",
    options: [
      const StateOption(text: "Domain Name System", isCorrect: true),
      const StateOption(text: "Address Resolution Protocol", isCorrect: false),
      const StateOption(text: "User Datagram Protocol", isCorrect: false),
      const StateOption(text: "Transmission Control Protocol", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Domain Name System", isCorrect: true),
  ),
  StateQuestion(
    text: "You have been asked to create a subnet that supports 24 hosts. What subnet mask you use?",
    options: [
      const StateOption(text: "255.255.255.224", isCorrect: true),
      const StateOption(text: "255.255.255.248", isCorrect: false),
      const StateOption(text: "255.255.255.240", isCorrect: false),
      const StateOption(text: "255.255.255.252", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "255.255.255.224", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following is the smallest meaningful sequence of characters of interest in source program:",
    options: [
      const StateOption(text: "Pattern", isCorrect: false),
      const StateOption(text: "Lexemes", isCorrect: false),
      const StateOption(text: "Tokens", isCorrect: false),
      const StateOption(text: "All", isCorrect: true),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "All", isCorrect: true),
  ),
  StateQuestion(
    text: "Assume you are asking to establish a network using 50(fifty) computers in mesh topology. How many cables required to establish a network?",
    options: [
      const StateOption(text: "2225", isCorrect: false),
      const StateOption(text: "1225", isCorrect: true),
      const StateOption(text: "1450", isCorrect: false),
      const StateOption(text: "2450", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "1225", isCorrect: true),
  ),
  StateQuestion(
    text: "It is a method used to synchronize the I/O device with the microprocessor:",
    options: [
      const StateOption(text: "Interrupt", isCorrect: true),
      const StateOption(text: "Handshaking", isCorrect: false),
      const StateOption(text: "Interface", isCorrect: false),
      const StateOption(text: "None", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "Interrupt", isCorrect: true),
  ),
  StateQuestion(
    text: "If database modifications occur while the transaction is still active, the transaction is said to use the ___________ technique:",
    options: [
      const StateOption(text: "Deferred-Update", isCorrect: false),
      const StateOption(text: "Late-modification", isCorrect: false),
      const StateOption(text: "Immediate-Update", isCorrect: true),
      const StateOption(text: "Undo", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "Immediate-Update", isCorrect: true),
  ),
  StateQuestion(
    text: "The component of Expert system which provide interaction between user expert system and Expert system:",
    options: [
      const StateOption(text: "Knowledge base", isCorrect: false),
      const StateOption(text: "Inference engine", isCorrect: false),
      const StateOption(text: "User interface", isCorrect: true),
      const StateOption(text: "Human expert", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "User interface", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following instructions is incorrect?",
    options: [
      const StateOption(text: "MOV AL, BP", isCorrect: true),
      const StateOption(text: "INC CX", isCorrect: false),
      const StateOption(text: "DEC CX", isCorrect: false),
      const StateOption(text: "All", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(text: "MOV AL, BP", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following is incorrect about Map data structure?",
    options: [
      const StateOption(text: "Allow duplicate keys", isCorrect: true),
      const StateOption(text: "Cannot be traversed", isCorrect: false),
      const StateOption(text: "Allow duplicate values", isCorrect: false),
      const StateOption(text: "None of the above", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const StateOption(text: "Allow duplicate keys", isCorrect: true),
  ),
  StateQuestion(
    text: "A register used to indicate the condition of the microprocessor is:",
    options: [
      const StateOption(text: "SI", isCorrect: false),
      const StateOption(text: "FLAG", isCorrect: true),
      const StateOption(text: "DI", isCorrect: false),
      const StateOption(text: "EIP", isCorrect: false),
    ],
    id: 12,
    correctAnswer: const StateOption(text: "FLAG", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following instructions is correct:",
    options: [
      const StateOption(text: "MOV DS, 20", isCorrect: false),
      const StateOption(text: "MOV ES, 40", isCorrect: false),
      const StateOption(text: "MOV SS, 60", isCorrect: false),
      const StateOption(text: "None", isCorrect: true),
    ],
    id: 13,
    correctAnswer: const StateOption(text: "None", isCorrect: true),
  ),
  StateQuestion(
    text: "A register used to address the next instruction in a section of memory is:",
    options: [
      const StateOption(text: "RSP", isCorrect: false),
      const StateOption(text: "CS", isCorrect: false),
      const StateOption(text: "RIP", isCorrect: true),
      const StateOption(text: "SS", isCorrect: false),
    ],
    id: 14,
    correctAnswer: const StateOption(text: "RIP", isCorrect: true),
  ),
  StateQuestion(
    text: "_______________ is a requirement elicitation technique that is used to gather the requirements using day-to-day working observation and notes made of the actual tasks:",
    options: [
      const StateOption(text: "Use case", isCorrect: false),
      const StateOption(text: "Ethnography", isCorrect: true),
      const StateOption(text: "Scenario", isCorrect: false),
      const StateOption(text: "Interview", isCorrect: false),
    ],
    id: 15,
    correctAnswer: const StateOption(text: "Ethnography", isCorrect: true),
  ),
  StateQuestion(
    text: "An ER model of a database consist of entity types A and B. These are connected by the relationship R which does not have its own attribute. Under which one of the following conditions, can the relational table for R be merged with that of A?",
    options: [
      const StateOption(text: "Relationship R is one-to-many and the participation of A in R is Total.", isCorrect: true),
      const StateOption(text: "Relationship R is one-to-many and the participation of A in R is Partial.", isCorrect: false),
      const StateOption(text: "Relationship R is many-to-one and the participation of A in R is Total.", isCorrect: false),
      const StateOption(text: "Relationship R is many-to-one and the participation of A in R is Partial.", isCorrect: false),
    ],
    id: 16,
    correctAnswer: const StateOption(text: "Relationship R is one-to-many and the participation of A in R is Total.", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following is more related to effective management of software complexity?",
    options: [
      const StateOption(text: "Modularity", isCorrect: true),
      const StateOption(text: "Reusability", isCorrect: false),
      const StateOption(text: "Extensibility", isCorrect: false),
      const StateOption(text: "All", isCorrect: false),
    ],
    id: 17,
    correctAnswer: const StateOption(text: "Modularity", isCorrect: true),
  ),
  StateQuestion(
    text: "A DHCP enabled computer on the network has been unplugged from the network for a week. In the meantime, several other computers were added to the network. When plugging the computer back into the network the computer is unable to reach network resources. Which of the following is the MOST likely cause?",
    options: [
      const StateOption(text: "The IP address lease has expired on the DHCP server.", isCorrect: false),
      const StateOption(text: "The DHCP scope needs to be redefined.", isCorrect: false),
      const StateOption(text: "The DHCP pool limit has been reached.", isCorrect: true),
      const StateOption(text: "The DHCP server needs to be restarted.", isCorrect: false),
    ],
    id: 18,
    correctAnswer: const StateOption(text: "The DHCP pool limit has been reached.", isCorrect: true),
  ),
  StateQuestion(
    text: "Which one of the following testing required knowledge about internal structure, design and implementation of the system?",
    options: [
      const StateOption(text: "Black box Testing", isCorrect: false),
      const StateOption(text: "White box testing", isCorrect: true),
    ],
    id: 19,
    correctAnswer: const StateOption(text: "White box testing", isCorrect: true),
  ),
];
