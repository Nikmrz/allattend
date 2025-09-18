import 'package:stacked/stacked.dart';

class CloneViewModel extends BaseViewModel {
  String searchQuery = "";

  List<String> stories = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Emma",
    "Frank",
  ];

  List<Map<String, String>> posts = [
    {"name": "Alice", "text": "Hello, this is my first post!"},
    {"name": "Bob", "text": "Having a great day at the park."},
    {"name": "Charlie", "text": "Just finished my Flutter project!"},
    {"name": "David", "text": "Anyone up for football tomorrow?"},
  ];

  void updateSearch(String query) {
    searchQuery = query;
    notifyListeners();
  }
}
