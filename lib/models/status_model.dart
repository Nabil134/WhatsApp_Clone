class StatusModel {
  final String name;
  final String time;
  final String? avatar;
  StatusModel({required this.name, required this.time, this.avatar});
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Nabil",
    time: "12:55 P.M",
    avatar: "images/nabil.jpg",
  ),
  StatusModel(
    name: "Babar",
    time: "1:00 P.M",
    avatar: "images/babar.jpg",
  ),
  StatusModel(
    name: "Arsalan",
    time: "3:00 P.M",
    avatar: "images/arsalan.jpg",
  ),
  StatusModel(
    name: "Huzaifa",
    time: "4:00 P.M",
    avatar: "images/huzaifa.jpg",
  ),
  StatusModel(
    name: "Usman",
    time: "6:00 P.M",
    avatar: "images/usman.jpg",
  ),
  StatusModel(
    name: "Ali",
    time: "7:00 P.M",
    avatar: "images/ali.jpg",
  ),
  StatusModel(
    name: "Agha",
    time: "8:00 P.M",
    avatar: "images/agha.jpg",
  ),
  StatusModel(
    name: "Usama",
    time: "12:55 P.M",
  ),
];
