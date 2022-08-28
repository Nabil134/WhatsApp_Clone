class ChatModel {
  final String name;
  final String message;
  final String time;
  final String? avatar;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Nabil",
    message: "chalte hein",
    time: "12:55 P.M",
    avatar: "images/nabil.jpg",
  ),
  ChatModel(
    name: "Babar",
    message: "confirm nhi",
    time: "1:00 P.M",
    avatar: "images/babar.jpg",
  ),
  ChatModel(
    name: "Arsalan",
    message: "pata nhi yr",
    time: "3:00 P.M",
    avatar: "images/arsalan.jpg",
  ),
  ChatModel(
    name: "Huzaifa",
    message: "Hmm",
    time: "4:00 P.M",
    avatar: "images/huzaifa.jpg",
  ),
  ChatModel(
    name: "Usman",
    message: "mera pata",
    time: "6:00 P.M",
    avatar: "images/usman.jpg",
  ),
  ChatModel(
    name: "Ali",
    message: "kal bata hun",
    time: "7:00 P.M",
    avatar: "images/ali.jpg",
  ),
  ChatModel(
    name: "Agha",
    message: "yr ajeeb",
    time: "8:00 P.M",
    avatar: "images/agha.jpg",
  ),
  ChatModel(
    name: "Usama",
    message: "done karo",
    time: "12:55 P.M",
  ),
];
