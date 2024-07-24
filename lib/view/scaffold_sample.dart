import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaffoldSample extends StatefulWidget {
  const ScaffoldSample({super.key});

  @override
  State<ScaffoldSample> createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {
int? _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        elevation: 16.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             UserAccountsDrawerHeader(
              accountName: Text("Vivek"),
              accountEmail: Text("vivek@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ],
            ),
            ListTile(
              title:  Text("All inboxes"),
              leading:  Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title:  Text("primary"),
              leading:  Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title:  Text("Social"),
              leading:  Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title:  Text("Promotions"),
              leading:  Icon(Icons.local_offer),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
        ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
            )),
        ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.clear,
            )
        )
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex!,
        fixedColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),


    );
  }
}
