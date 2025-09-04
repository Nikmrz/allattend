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
            title:Row(
              children: [
                Text(
                  'Bhadra 19 2082',
                   style:TextStyle(
                    color:Color.fromARGB(100, 0, 255, 0),
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
                    Text('CONTACT DIRECTORY', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    Text('What are you searching for today?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Contact',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                      ),

                    ),
                    SizedBox(height: 20,),
                    Text('Total Contacts: ${viewModel.contacts.length}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       
                        child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Text('All',style: TextStyle(color: Colors.white),)),
                          Container(
                               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            margin: EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 174, 168, 168),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Text('Logistics')),
                          Container(
                               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            margin: EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 174, 168, 168),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Text('Principal')),
                        ]
                        ),
                      ),
                    ),

                    SizedBox(height: 60,),
                    Text('Recent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                                  style: TextStyle(color: Colors.green),
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

                    Text('All Contacts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                          itemCount: viewModel.contacts.length,
                          itemBuilder: (context, index) {
                            final contact = viewModel.contacts[index];
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
                                        Text(contact.post, style: TextStyle(color: Colors.green),),
                                        Text(contact.phoneNumber, style: TextStyle(fontWeight: FontWeight.w600),),
                                      ],
                                      
                                    ),
                                  ),
                                  
                                  leading: CircleAvatar(
                                    child: Text(contact.name[0], style: TextStyle(color: Colors.white),),
                                  ),
                                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.green,)),
                                ),
                              ),
                            );
                          
                          },
                          
                        ),
                    ),
                  ],
                ),
              ),

                
        );
      },
    );
  }
}