import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderId;
  final String receiverId;

  Message({required this.receiverId, required this.senderId});
}
