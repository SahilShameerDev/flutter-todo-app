// ignore: file_names
import 'package:flutter/material.dart';
import 'package:todo/utils/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8789F5),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Transform.translate(
                offset: const Offset(-50, 40),
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: const BoxDecoration(
                    color: Color(0xFF9DA1F5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 68),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Color(0xFF716F6F),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 30,
                          width: 220,
                          decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                          children: [
                            Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF716F6F),
                            ),
                            ),
                          ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFF9DA1F5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Today, April 10',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'My Tasks',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
                Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 590,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                  ),
                  child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      'Today',
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF716F6F),
                      ),
                    ),
                    SizedBox(height: 20),

                    TodoBar( title: 'Hello world',),


                    TodoBar(title: 'hi hello',),

                    
                    Text(
                      'Tomarrow',
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF716F6F),
                      ),
                    ),
                    ],
                  ),
                  ),
                ),
                ),
            
            ],
          ),
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: ' ',
        ),
        BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      label: '',
        ),
        
      ],
      selectedItemColor: const Color(0xFF8789F5),
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        // Handle navigation based on the selected index
      },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
      // Handle button press
      },
      backgroundColor: const Color(0xFF8789F5),
      child: const Icon(Icons.add, color: Colors.white),
    ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
