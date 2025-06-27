import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/profile/presentation/pages/profiles.dart';

class PersonalInformationWidget extends StatelessWidget {
  final TextEditingController nameController=TextEditingController();
  final TextEditingController lastnameController=TextEditingController();
  final TextEditingController dateController=TextEditingController();
  final TextEditingController numberController=TextEditingController();
  final TextEditingController cityController=TextEditingController();
  final TextEditingController adressController=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 7.5, right: 7.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profiles(),));
                      },
                      label: Text("Cancel", style: TextStyle(fontSize: 18)),
                    ),
                    Text(
                      "Personal information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      label: Text("Save", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20, left: 100),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/doctors/cardimage.jpg",
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Delete photo",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("First name", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Alexander",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text("Last name", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: lastnameController,
                  decoration: InputDecoration(
                    hintText: "Johnson",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text("Date of birth", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: dateController,
                   keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: "05/07/1989",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text("Phone number", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: numberController,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: "+99855555555",
                    border: OutlineInputBorder(
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("City", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                    hintText: "Boston, MA",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text("Address", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextField(
                  controller: adressController,
                  decoration: InputDecoration(
                    hintText: "Boylston St, Building 45, Apartment 3A",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
