import 'package:stacked/stacked.dart';

class ContactDirectoryViewModel extends BaseViewModel{
  onSearchPressed(){
  }
  List<ContactModel> get contacts => [
      ContactModel(name: "John Doe", phoneNumber: "123-456-7890", post: "Principal", time: "10:00 AM"),
      ContactModel(name: "Jane Smith", phoneNumber: "987-654-3210", post: "Logisitics", time: "11:00 AM"),
      ContactModel(name: "Alice Johnson", phoneNumber: "555-123-4567", post: "IT", time: "12:00 PM"),
    ];  
  }
  
  class ContactModel {
    final String name;
    final String phoneNumber;
    final String post;
    final String time;
  
    ContactModel({required this.name, required this.phoneNumber, required this.post, required this.time});
  }