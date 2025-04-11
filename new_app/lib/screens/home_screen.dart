import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/horizontal_avatar_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.settings),
        title: const Text("Home"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          )
        ],
         iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
              ),
            ),
          ),
         
         const SectionTitle(title: "FAVOURITES", count: 3),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: const HorizontalAvatarList(section: "favourites"),
          ),


          const SectionTitle(title: "PEOPLE", count: 5),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: const HorizontalAvatarList(section: "people"),
          ),


          const SectionTitle(title: "ROOMS", count: 5),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: const HorizontalAvatarList(section: "rooms"),
          ),


          const SectionTitle(title: "LOW PRIORITY", count: 2),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: const HorizontalAvatarList(section: "low_priority"),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape:CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.tag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
        ],
      ),
    );
  }
}
