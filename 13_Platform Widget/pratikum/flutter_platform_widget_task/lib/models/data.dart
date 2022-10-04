class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status;
  final int? messNum;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.imgPath,
      required this.status,
      this.messNum});
}

final List<ChatModel> items = [
  ChatModel(
      name: 'Press Room',
      message: 'Wow, nice mention!',
      time: '6:54 PM',
      imgPath: 'assets/profile-2.jpg',
      status: true,
      messNum: 200),
  ChatModel(
      name: 'Monica Goldsmith',
      message: 'Never mind, I still waiting',
      time: '6:00 PM',
      imgPath: 'assets/profile-3.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'Jaina Moore',
      message: 'Okaaaaay!',
      time: '5:10 PM',
      imgPath: 'assets/profile-4.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'Paul Dogger',
      message: 'Lets Design more robots!',
      time: '4:54 PM',
      imgPath: 'assets/profile-5.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'Ben Rodriguez',
      message: 'wHAT?!',
      time: '1:12 PM',
      imgPath: 'assets/profile-6.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'Factory',
      message: 'You have my financial support system',
      time: 'Tue',
      imgPath: 'assets/profile-1.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'Kate',
      message: 'Update? Update my shinny metal..',
      time: 'Mon',
      imgPath: 'assets/profile-8.jpg',
      status: true,
      messNum: null),
  ChatModel(
      name: 'William',
      message: 'Hey Bruhhh!',
      time: 'Mon',
      imgPath: 'assets/profile-9.jpg',
      status: true,
      messNum: null),
];
