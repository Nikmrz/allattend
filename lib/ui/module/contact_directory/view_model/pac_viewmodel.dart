import 'package:stacked/stacked.dart';

class PacViewmodel extends BaseViewModel {
String searchQuery = "";

 final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];

 List<String> friends = ["Alice", "Bob", "Charlie","Shreya","yuri"];

  int get friendCount => friends.length;
String displaynames(int index){
  if(index >= 0 && index < friends.length){
    return friends[index];
  }
  return ""; // fallback if invalid index
}

}