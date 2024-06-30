class EthiopiaQuestion {
  final int id;
  final String text;
  final List<EthiopiaOption> options;
  bool isLocked;
  EthiopiaOption? selectedWiidgetOption;
  EthiopiaOption? correctAnswer;

  EthiopiaQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  EthiopiaQuestion copyWith() {
    return EthiopiaQuestion(
      id: id,
      text: text,
      options: options
          .map((option) => EthiopiaOption(
        text: option.text,
        isCorrect: option.isCorrect,
      ))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class EthiopiaOption {
  final String text;
  final bool isCorrect;

  const EthiopiaOption({
    required this.text,
    required this.isCorrect,
  });
}

final ethiopiaQuestionsList = <EthiopiaQuestion>[
  EthiopiaQuestion(
    text: "What is the capital city of Ethiopia?",
    options: [
      const EthiopiaOption(text: "Addis Ababa", isCorrect: true),
      const EthiopiaOption(text: "Nairobi", isCorrect: false),
      const EthiopiaOption(text: "Dar es Salaam", isCorrect: false),
      const EthiopiaOption(text: "Kigali", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const EthiopiaOption(text: "Addis Ababa", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "Which mountain is the highest in Ethiopia?",
    options: [
      const EthiopiaOption(text: "Mount Semien", isCorrect: false),
      const EthiopiaOption(text: "Mount Guna", isCorrect: false),
      const EthiopiaOption(text: "Mount Tullu Demtu", isCorrect: true),
      const EthiopiaOption(text: "Mount Bale", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const EthiopiaOption(text: "Mount Tullu Demtu", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "What is the currency of Ethiopia?",
    options: [
      const EthiopiaOption(text: "Ethiopian Dollar", isCorrect: false),
      const EthiopiaOption(text: "Birr", isCorrect: true),
      const EthiopiaOption(text: "Shilling", isCorrect: false),
      const EthiopiaOption(text: "Dinar", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const EthiopiaOption(text: "Birr", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "Which Ethiopian dish is made from spiced meat served with injera?",
    options: [
      const EthiopiaOption(text: "Wat", isCorrect: true),
      const EthiopiaOption(text: "Injera", isCorrect: false),
      const EthiopiaOption(text: "Kitfo", isCorrect: false),
      const EthiopiaOption(text: "Tibs", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const EthiopiaOption(text: "Wat", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "What is the largest ethnic group in Ethiopia?",
    options: [
      const EthiopiaOption(text: "Amhara", isCorrect: false),
      const EthiopiaOption(text: "Oromo", isCorrect: true),
      const EthiopiaOption(text: "Tigray", isCorrect: false),
      const EthiopiaOption(text: "Somali", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const EthiopiaOption(text: "Oromo", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "What is the Ethiopian New Year called?",
    options: [
      const EthiopiaOption(text: "Meskerem", isCorrect: false),
      const EthiopiaOption(text: "Enkutatash", isCorrect: true),
      const EthiopiaOption(text: "Timkat", isCorrect: false),
      const EthiopiaOption(text: "Irreecha", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const EthiopiaOption(text: "Enkutatash", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "Which famous fossil hominid was discovered in Ethiopia?",
    options: [
      const EthiopiaOption(text: "Australopithecus", isCorrect: true),
      const EthiopiaOption(text: "Homo habilis", isCorrect: false),
      const EthiopiaOption(text: "Homo erectus", isCorrect: false),
      const EthiopiaOption(text: "Homo sapiens", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const EthiopiaOption(text: "Australopithecus", isCorrect: true),
  ),
  EthiopiaQuestion(
    text: "What is the Ethiopian coffee ceremony called?",
    options: [
      const EthiopiaOption(text: "Buna", isCorrect: false),
      const EthiopiaOption(text: "Kaffa", isCorrect: false),
      const EthiopiaOption(text: "Jebena", isCorrect: false),
      const EthiopiaOption(text: "Bunna", isCorrect: true),
    ],
    id: 7,
    correctAnswer: const EthiopiaOption(text: "Bunna", isCorrect: true),
  ),
];
