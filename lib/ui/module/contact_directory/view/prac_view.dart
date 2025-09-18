import 'package:allattend/ui/module/contact_directory/view/History_view.dart';
import 'package:allattend/ui/module/contact_directory/view_model/pac_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PacView extends StatelessWidget {
  const PacView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PacViewmodel(),
      builder: (
         context,
        model,
        child,
      ) {
     
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 54, 52, 52),
          
          appBar: AppBar(
            
            toolbarOpacity: 1,
            toolbarHeight: 65,
           backgroundColor:  const Color.fromARGB(255, 54,52,52),
            leading: Container(
            margin: EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 60,
                  width: 60,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 126, 126),
                shape: BoxShape.circle,
              ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                            radius:50,
                  ),
                ),
              ),
            ),
centerTitle: true,


// center title design 

title: Container(
  padding: EdgeInsets.all(14),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 128, 126, 126),
    borderRadius: BorderRadius.circular(30),
  ),
  child: Row(
    mainAxisSize:  MainAxisSize.min,
    children: [
      Icon(Icons.people_outlined, color: const Color.fromARGB(255, 255, 255, 255)),
      SizedBox(width: 8),
      Text(
                    "${model.friendCount} Friend${model.friendCount > 1 ? 's' : ''}",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize:  14,
                      
                      fontWeight: FontWeight.w900,
                    ),
                  ),
    ],
  ),
),





// search bar design

// title: Container(
//   padding: EdgeInsets.only(left: 20),
//   decoration: BoxDecoration(
//     border: Border.all(color: Color.fromARGB(255, 253, 253, 253)),
//     color: Color.fromARGB(255, 128, 126, 126),
//     borderRadius: BorderRadius.circular(30),
//   ),
//   child: Row(
    
//     children: [
//       Icon(Icons.search_outlined, color: const Color.fromARGB(255, 255, 255, 255)),
//       SizedBox(width: 8),
//       Expanded(
        
//         child: TextField(
        
//           decoration: InputDecoration(

//             hintText: "Search",
//             hintStyle: TextStyle(color: Colors.white70),
//            border: InputBorder.none,
//           ),
//         ),
//       ),
  
//     ],
//   ),
// ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 126, 126),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.message_sharp,color: Colors.white),
                ),
            ],
          ),

// body: ListView.builder(
//   itemCount: model.friends.length,
//   itemBuilder: (context, index) {
//     return ListTile(
//       title: Text(
//         model.displaynames(index),=
//         style: TextStyle(color: Colors.white, fontSize: 24),
//       ),
//     );
//   },
// ),

body: SafeArea(
  child: Column(
    children: [
      SizedBox(height: 35),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Expanded(
            child: Container(
              height: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          )
        ],
      ),
    SizedBox(height: 30),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.flash_auto_outlined, size: 40, color: Colors.white),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color.fromARGB(255, 247, 230, 2), width: 4),
          ),
          child: Container(
             decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color:  const Color.fromARGB(255, 54, 52, 52), width: 4),
          ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              
            ),
          ),
        ),
        Icon(Icons.flip_camera_android, size: 40, color: Colors.white),
      ],
    ),
    SizedBox(height: 40),
 Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HistoryView()),
        );
      },
      child: Text(
        "History",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white)
  ],
)
    ],
  ),
)
        );
      },
    );
  }
}