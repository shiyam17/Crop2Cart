import 'package:flutter/material.dart';


class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ChatPage(
              userName: 'User 1',
              userImage: 'assets/icons/tomato.png',
            ),
        '/user2': (context) => ChatPage(
              userName: 'User 2',
              userImage: 'assets/icons/onion.png',
            ),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}

// Global message list for both users
List<Map<String, String>> messages = [];

class ChatPage extends StatefulWidget {
  final String userName;
  final String userImage;

  const ChatPage({super.key, required this.userName, required this.userImage});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        messages.add({
          'user': widget.userName,
          'message': message,
          'image': widget.userImage
        });
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop2Cart Chat'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Open the drawer
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to account page or profile settings
            },
          ),
        ],
      ),
      backgroundColor:Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Favorites'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/favorites');
              },
            ),
            ListTile(
              title: Text('Cart'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/cart');
              },
            ),
            ListTile(
              title: Text('History'),
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings page
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Below Title Bar Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.history),
                onPressed: () {
                  Navigator.pushNamed(context, '/history');
                },
              ),
              IconButton(
                icon: Icon(Icons.switch_account),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, widget.userName == 'User 1' ? '/user2' : '/');
                },
              ),
            ],
          ),
          // Chat messages list
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                bool isCurrentUser = message['user'] == widget.userName;
                return ListTile(
                  leading: isCurrentUser
                      ? null
                      : CircleAvatar(
                          backgroundImage: AssetImage(message['image']!),
                        ),
                  trailing: isCurrentUser
                      ? CircleAvatar(
                          backgroundImage: AssetImage(widget.userImage),
                        )
                      : null,
                  title: Align(
                    alignment: isCurrentUser
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isCurrentUser
                            ? Colors.blueAccent
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        message['message']!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/favorites');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/cart');
          }
        },
      ),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat History'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(message['image']!),
            ),
            title: Text('${message['message']}'),
          );
        },
      ),
    );
  }
}