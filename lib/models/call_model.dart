import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String? avatar;
  final Icon? callType;
  CallModel(
      {required this.name, required this.time, this.avatar, this.callType});
  static Icon callReceived =
      Icon(Icons.call_received, color: Colors.green, size: 18);
  static Icon callMissed = Icon(Icons.call_missed, color: Colors.red, size: 18);
}

List<CallModel> callData = [
  CallModel(
    name: "Nabil",
    time: "12:55 P.M",
    avatar: "images/nabil.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Babar",
    time: "1:00 P.M",
    avatar: "images/babar.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Arsalan",
    time: "3:00 P.M",
    avatar: "images/arsalan.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Huzaifa",
    time: "4:00 P.M",
    avatar: "images/huzaifa.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Usman",
    time: "6:00 P.M",
    avatar: "images/usman.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Ali",
    time: "7:00 P.M",
    avatar: "images/ali.jpg",
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: "Agha",
    time: "8:00 P.M",
    avatar: "images/agha.jpg",
    callType: CallModel.callMissed,
  ),
  CallModel(
    name: "Usama",
    time: "12:55 P.M",
    callType: CallModel.callMissed,
  ),
];
