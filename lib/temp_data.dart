import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/models/subject.dart';

final List listTitle = [
  {
    "title": "Thời khóa biểu",
    "color": Colors.red,
  },
  {
    "title": "Đồ án",
    "color": Colors.purple,
  },
  {
    "title": "Điểm danh",
    "color": Colors.deepOrangeAccent,
  },
  {
    "title": "Thực tập",
    "color": Colors.lightBlue,
  },
  {
    "title": "Biểu mẫu\n online",
    "color": Colors.deepPurple,
  },
  {
    "title": "Tin tức\nThông báo",
    "color": Colors.lightGreenAccent,
  }
];
// Research List
final List<Map<String, String>> listResearchInfo = [
  {
    "title": "IT1234 - Đồ án 1 - 65432",
    "instructor": "Nguyễn Thanh Hùng - CNPM",
    "mail": "hung.nguyenthanh2@hust.edu",
    "phone": "0987654321",
  },
  {
    "title": "IT1234 - Đồ án 1 - 65432",
    "instructor": "Nguyễn Thanh Hùng - CNPM",
    "mail": "hung.nguyenthanh2@hust.edu",
    "phone": "0987654321",
  },
  {
    "title": "IT1234 - Đồ án 1 - 65432",
    "instructor": "Nguyễn Thanh Hùng - CNPM",
    "mail": "hung.nguyenthanh2@hust.edu",
    "phone": "0987654321",
  },
  {
    "title": "IT1234 - Đồ án 1 - 65432",
    "instructor": "Nguyễn Thanh Hùng - CNPM",
    "mail": "hung.nguyenthanh2@hust.edu",
    "phone": "0987654321",
  },
];

// Time Table
final List listSubject = [
  {
    "date": "Thứ\n3",
    "subject" : [Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102"),Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102"),Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102"),Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102")]
  },
  {
    "date": "Thứ\n4",
    "subject": [Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102")]
  },
  {
    "date": "Thứ\n5",
    "subject": [Subject(name: "Nhập môn CNPM", subjectId: "IT2110", classId: "32313", time: "Tiết 1 - 3", room: "D9-102")]
  },
];