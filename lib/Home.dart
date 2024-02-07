import 'package:custom_widgets/widgets/CustomBottomNavigation.dart';
import 'package:custom_widgets/widgets/CustomButton.dart';
import 'package:custom_widgets/widgets/CustomDrawer.dart';
import 'package:custom_widgets/widgets/CustomListView.dart';
import 'package:custom_widgets/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var arrNames = ['Bilal', 'Usama', 'Hamza', 'Bilal', 'Usama', 'Hamza', 'Bilal',
      'Usama', 'Hamza', 'Bilal', 'Usama', 'Hamza', 'Bilal', 'Usama', 'Hamza', 'Bilal',
      'Usama', 'Hamza'];
     var arrNum = ['0303', '0336', '0303', '0336', '0303', '0336', '0303', '0336',
       '0303','0336','0303','0336', '0303',  '0336', '0303', '0336','0303', '0336',
       '0303', '0336'];


    void handleTap(dynamic item) {
      print('Tapped: $item');
    }

    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading:  Padding(
          padding: EdgeInsets.only(left : 10.0),
          child: IconButton(
            icon: const Icon(Icons.menu,color: Colors.white,size: 28,),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        centerTitle: true,
        title: Text('CAll LOG', style: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic)),
        actions:  [ Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: const Icon(Icons.logout,color: Colors.white,size: 28,),
            onPressed: () {},
          ),
        )],
      ),

      // body: Center(
      //   child: CustomListView(
      //     listItems: arrNames,
      //     onTap: handleTap,
      //     listItemsNum: arrNum,
      //   ),
      // ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child:



          Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                  controller: nameController,
                  name: 'Name',
                  prefixIcon: Icons.person,
                  inputType: TextInputType.name,
                inputFormatter: FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                validator: (value) {  },
                obscureText: false,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: passController,
                obscureText: true,
                name: 'Password',
                prefixIcon: Icons.lock,

                inputType: TextInputType.text,
                inputFormatter: FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9\S]{0,}$')),
                validator: (value) {  },
              ),
              const SizedBox(height: 10),
              CustomButton(
                  text: "text",
                  icon: Icons.add,
                  onPressed: (){},
              )
            ],

          ),
        ),
      bottomNavigationBar: CustomBottomNavigation(),
      drawer:  CustomDrawer(),
    );
  }
}
