import 'package:allattend/ui/module/contact_directory/view_model/addcontact_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddcontactView extends StatelessWidget {
  const AddcontactView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AddcontactViewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            notificationPredicate: (_) => false,
            title: Row(
              children: [
                const Text(
                  'Bhadra 22 2082',
                  style: TextStyle(
                    color: Color.fromARGB(99, 4, 65, 4),
                    fontSize: 16,
                
                    fontWeight: FontWeight.bold,
                     fontFamily: 'MPLUS1P'
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    print("Profile Clicked");
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person_2_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: viewmodel.isBusy
              ? Center(child: CircularProgressIndicator())
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 14.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.dashboard,
                                          size: 30, color: Colors.black),
                                      Text(
                                        'Dashboard',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                            , fontFamily: 'MPLUS1P'),
                                      ),
                                      Icon(Icons.chevron_right,
                                          size: 20, color: Colors.black),
                                      Text(
                                        'Contact',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                            , fontFamily: 'MPLUS1P'),
                                      ),
                                      Icon(Icons.chevron_right,
                                          size: 20, color: Colors.black),
                                      Text(
                                        'Add Contact',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                            , fontFamily: 'MPLUS1P'),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 48),
                                // Title
                                Center(
                                  child: Text(
                                    'ADD CONTACT',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w900
                                        , fontFamily: 'MPLUS1P'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    'Select a Profile Picture',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                         fontFamily: 'MPLUS1P',
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(height: 16),
                             
                                Center(
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 40,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),

                                _buildTextField('Full Name', Icons.person_2),
                                _buildTextField('Mobile Number', Icons.call),
                                _buildTextField('Email Address', Icons.email),
                                _buildTextField('Designation', Icons.access_alarms),
                                _buildTextField('Affiliated School', Icons.school),

                                SizedBox(height: 20),

                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: (){}, child: Text('Cancel',style: TextStyle(fontFamily: 'MPLUS1P',color: const Color.fromARGB(255, 255, 255, 255)),), 
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30)
                                            ,),
                                            ),
                                            ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: (){}, child: Text('Save',style: TextStyle(color: Colors.white, fontFamily: 'MPLUS1P'),), 
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 14, 200, 7),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30)
                                            ,),
                                            ),
                                            ),
                                    ),
                                  ],

                                ),
                              ],

                              
                            ),

                          ),
                          
                        ),
                      
                      
                      ],
                      
                    ),
                    
                  ),
                  
                ),
                
        );
        
      },
    );
  }

  // Reusable TextField builder
  Widget _buildTextField(String hint, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0xFFEEEEEE),
          hintStyle: TextStyle(fontFamily: 'MPLUS1P'),
        ),
      ),
    );
  }
}
