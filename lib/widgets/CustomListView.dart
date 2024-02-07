import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<dynamic> listItems;
  final List<dynamic> listItemsNum;
  final Function(dynamic) onTap;

  const CustomListView({
    Key? key,
    required this.listItems,
    required this.onTap,
    required this.listItemsNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
        elevation: 0,
        color: Colors.white,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.lightBlueAccent, width: 1),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange, // Customize the color here
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              title: Text(
                listItems[index].toString(),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                listItemsNum[index].toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.call,color: Colors.green,size: 30),
              ),
              onTap: () => onTap(listItems[index]),
            );
          },
          itemCount: listItems.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 6,
            );
          },
        ),
      );

  }
}
