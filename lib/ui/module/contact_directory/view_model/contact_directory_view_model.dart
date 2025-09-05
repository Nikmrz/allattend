import 'package:stacked/stacked.dart';

class ContactDirectoryViewModel extends BaseViewModel {
  String? _selectedDesignation = 'All';
  String? get selectedDesignation => _selectedDesignation;

  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  void onSearchQueryChanged(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void onSelectionChanged(String designation) {
    _selectedDesignation = designation;
    notifyListeners();
  }

  List<ContactModel> search() {
    if (_searchQuery.isNotEmpty) {
      return filteredContacts()
          .where((element) =>
              element.name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }
    return filteredContacts();
  }

  List<ContactModel> get filteredContact => filteredContacts();

  List<ContactModel> filteredContacts() {
    if (_selectedDesignation == 'All') return contacts;
    return contacts
        .where((e) => e.post.toLowerCase() == _selectedDesignation!.toLowerCase())
        .toList();
  }

  List<ContactModel> get contacts => [
        ContactModel(
            name: "John Doe",
            phoneNumber: "123-456-7890",
            post: "Principal",
            time: "10:00 AM"),
        ContactModel(
            name: "Jane Smith",
            phoneNumber: "987-654-3210",
            post: "Logistics",
            time: "11:00 AM"),
        ContactModel(
            name: "Alice Johnson",
            phoneNumber: "555-123-4567",
            post: "IT",
            time: "12:00 PM"),
              ContactModel(name: "Bob Williams", phoneNumber: "222-333-4444", post: "Finance", time: "01:00 PM"),
  ContactModel(name: "Clara Lee", phoneNumber: "111-222-3333", post: "Directors", time: "02:00 PM"),
  ContactModel(name: "David Brown", phoneNumber: "444-555-6666", post: "Logistics", time: "03:00 PM"),
  ContactModel(name: "Eva Green", phoneNumber: "777-888-9999", post: "IT", time: "04:00 PM"),
  ContactModel(name: "Frank Miller", phoneNumber: "333-444-5555", post: "Finance", time: "05:00 PM"),
  ContactModel(name: "Grace Adams", phoneNumber: "888-999-0000", post: "Directors", time: "06:00 PM"),
  ContactModel(name: "Henry Scott", phoneNumber: "123-789-4560", post: "Logistics", time: "07:00 AM"),
  ContactModel(name: "Ivy Clark", phoneNumber: "321-654-9870", post: "IT", time: "08:00 AM"),
  ContactModel(name: "Jack Wilson", phoneNumber: "456-123-7890", post: "Finance", time: "09:00 AM"),
  ContactModel(name: "Karen Hall", phoneNumber: "654-321-0987", post: "Directors", time: "10:30 AM"),
  ContactModel(name: "Leo Turner", phoneNumber: "789-456-1230", post: "Logistics", time: "11:30 AM"),
  ContactModel(name: "Mia Young", phoneNumber: "987-123-6540", post: "IT", time: "12:30 PM"),
  ContactModel(name: "Nathan King", phoneNumber: "159-357-2580", post: "Finance", time: "01:30 PM"),
  ContactModel(name: "Olivia Wright", phoneNumber: "753-951-4560", post: "Directors", time: "02:30 PM"),
  ContactModel(name: "Paul Baker", phoneNumber: "852-963-7410", post: "Logistics", time: "03:30 PM"),
  ContactModel(name: "Quinn Perez", phoneNumber: "147-258-3690", post: "IT", time: "04:30 PM"),
  ContactModel(name: "Rachel Evans", phoneNumber: "369-147-2580", post: "Finance", time: "05:30 PM"),

      ];

  void onSearchPressed() {
    // Optional: Implement if needed
  }
}

class ContactModel {
  final String name;
  final String phoneNumber;
  final String post;
  final String time;

  ContactModel({
    required this.name,
    required this.phoneNumber,
    required this.post,
    required this.time,
  });
}
