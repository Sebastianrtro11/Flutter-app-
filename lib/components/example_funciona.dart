import 'package:flutter/material.dart';

class ExampleFunciona extends StatefulWidget {
  const ExampleFunciona({super.key});

  @override
  State<ExampleFunciona> createState() => _ExampleDrawerState();
}

class _ExampleDrawerState extends State<ExampleFunciona> {
  int _selectedIndex = 0;
  final TextEditingController _nameController = TextEditingController();
  final List<String> _names = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addName() {
    setState(() {
      if (_nameController.text.isNotEmpty) {
        _names.add(_nameController.text);
        _nameController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.person, color: Colors.teal),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addName,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: const Text('Add Name'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Names:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_names[index]),
                    leading: const Icon(Icons.person),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwcSY_i6dytjphtxGPbclQOvmwULrHln0a3Q&s'),
                    ),
                    SizedBox(width: 20),
                    Text('Profile Picture', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Gallery',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
                      height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
