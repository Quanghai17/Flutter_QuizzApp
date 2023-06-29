class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Sở thú bị cháy ,đố bạn con gì chạy ra đầu tiên?",
    "options": ['Sư tử', 'Con người', 'Con vịt', 'Cá sấu'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Đố bạn khi Beckham thực hiện quả đá phạt đền, anh ta sẽ sút vào đâu?",
    "options": ['Cột dọc', 'Xà ngang', 'Quả bóng', 'Thủ môn'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Con mèo nào cực kỳ sợ chuột?",
    "options": ['Doremon', 'Tom', 'Mèo mướp', 'Jenney'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Bức tranh nàng Mônalisa, người đẹp này không có gì?",
    "options": ['Tóc', 'Răng cửa', 'Mí mắt', 'Lông mày'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "Cái gì đen khi bạn mua nó, đỏ khi dùng nó và xám xịt khi vứt nó đi?",
    "options": ['Than', 'Ba Con Sói', 'Tai nghe', 'Áo phông'],
    "answer_index": 0,
  },
];
