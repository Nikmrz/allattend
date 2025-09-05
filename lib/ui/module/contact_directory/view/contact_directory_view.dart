import 'package:allattend/ui/module/contact_directory/view_model/contact_directory_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ContactDirectoryView  extends StatelessWidget {
  const ContactDirectoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ContactDirectoryViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          
          appBar: AppBar(
            notificationPredicate:(notification) => false,
            title:Row(
              children: [
              const Text(
                  'Bhadra 19 2082',
                   style:TextStyle(
                    color:Color.fromARGB(99, 4, 65, 4),
                    fontSize:16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontFamily:'san Francisco',
                    
                    ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        print("Profile Clicked");
                      },
                 child:CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person_2_rounded, color: Colors.white,),
                    ),
                    ), 
              ], 
            ),
          ),
          body: viewModel.isBusy
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(12.0),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Row(
                        children: [
                          Icon( Icons.dashboard, size: 30, color: Colors.black,),
                          Text('Dashboard', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          Icon(Icons.chevron_right, size: 20, color: Colors.black,),
                          Text('Contact', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    
                    Text('CONTACT DIRECTORY', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    Text('What are you searching for today?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Contact',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                      ),
  onChanged: (value) =>
                      viewModel.onSearchQueryChanged(value), 
                    ),
                    SizedBox(height: 10,),
                    Text('Total Contacts: ${viewModel.contacts.length}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...['All', 'IT', 'Principal', 'Logistics','Finance','Directors'].map(
                          (e) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: InkWell(
                                  onTap: () {
                                    viewModel.onSelectionChanged(e);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 12),
                                    decoration: BoxDecoration(
                                      
                                      color: viewModel.selectedDesignation == e
                                          ? const Color.fromARGB(255, 11, 32, 50)
                                          : Color.fromARGB(255, 167, 164, 164),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(24)),
                                    ),
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                        fontWeight: viewModel.selectedDesignation == e
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                            color:  viewModel.selectedDesignation == e
                                          ? Colors.white
                                          : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                            );
                          },
                        ),
                      ],
                    ),
                 ),

                  
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                       
                    //     child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                       
                    //     children: [
                    //       Container(
                    //         margin: EdgeInsets.only(right: 8.0),
                    //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    //         decoration: BoxDecoration(
                    //           color: Colors.blue,
                    //           borderRadius: BorderRadius.all(Radius.circular(24)),
                    //         ),
                    //         child: Text('All',style: TextStyle(color: Colors.white),)),
                    //       Container(
                    //            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    //         margin: EdgeInsets.only(right: 8.0),
                    //         decoration: BoxDecoration(
                    //           color: const Color.fromARGB(255, 174, 168, 168),
                    //           borderRadius: BorderRadius.all(Radius.circular(24)),
                    //         ),
                    //         child: Text('Logistics')),
                    //       Container(
                    //            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    //         margin: EdgeInsets.only(right: 8.0),
                    //         decoration: BoxDecoration(
                    //           color: const Color.fromARGB(255, 174, 168, 168),
                    //           borderRadius: BorderRadius.all(Radius.circular(24)),
                    //         ),
                    //         child: Text('Principal')),
                    //     ]
                    //     ),
                    //   ),
                    // ),

                    SizedBox(height: 60,),
                    Text('Recent', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
        Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.person_2_rounded, color: Colors.white),
                            ),
                            title: Text(
                              'John Smith',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, 
                              children: const [
                                Text(
                                  'IT',
                                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 2), 
                                Text('9876-543-210',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),), 
                              ],
                            ),
                            trailing: Text(
                              '10:00 AM',
                              style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red),
                            ),
                          ),
                        ),
                      ),

                    SizedBox(height: 40,),

                    Text('All Contacts', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        
                          itemCount: viewModel.searchQuery.isNotEmpty
                              ? viewModel.search().length
                              :viewModel.filteredContact.length,
                          itemBuilder: (context, index) {
                            final contactsToShow = viewModel.searchQuery.isNotEmpty
                                ? viewModel.search()
                                : viewModel.filteredContact;
                                
                            final contact = contactsToShow[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12.0,),
                              child: Container(
                                
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.all(Radius.circular(24)),
                                  
                                ),
                                child: ListTile(  
                                
                                  title: Padding(                        
                                    padding: const EdgeInsets.all(5.0),                        
                                    child: Column(
                                      
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      
                                      children: [
                                        
                                        Text(contact.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text(contact.post, style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text(contact.phoneNumber, style: TextStyle(fontWeight: FontWeight.w600),),
                                      ],
                                      
                                    ),
                                  ),
                                  
                                  leading: CircleAvatar(
                                    child: Text(contact.name[0], style: TextStyle(color: Colors.white),),
                                  ),
                                  trailing: Container(
                                 
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 36, 165, 40),
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                    ),
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.call, color: const Color.fromARGB(255, 255, 255, 255),))),
                                ),
                              ),
                            );
                          
                          },
                          
                        ),
                    ),
                 
                  ],
                ),
              ),
      
                 bottomNavigationBar: Container(
    color: Colors.grey[300],
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Column(
          mainAxisSize: MainAxisSize.min  ,
          children: [
            Icon(Icons.home),
            Text('Dashboard'),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon( Icons.bar_chart),
            Text('Reports'),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon( Icons.contact_phone),
            Text('Leads'),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon( Icons.person_2_rounded),
            Text('Profile'),
          ],
        ),
      ],
    ),
  ),
        );
        
      },
    );
  }
}