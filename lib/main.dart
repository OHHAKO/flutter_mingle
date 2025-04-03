import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/design_system.dart';
import 'screens/chat_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Bears Diary',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: DesignSystem.primaryBrown,
            brightness: Brightness.light,
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DesignSystem.radiusLarge),
            ),
            color: DesignSystem.backgroundBeige,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DesignSystem.radiusMedium),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: DesignSystem.spacing24,
                vertical: DesignSystem.spacing16,
              ),
              backgroundColor: DesignSystem.primaryBrown,
              foregroundColor: DesignSystem.surface,
            ),
          ),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bears Diary'),
        centerTitle: true,
        backgroundColor: DesignSystem.backgroundBeige,
        elevation: 0,
        foregroundColor: DesignSystem.textBrown,
        actions: [
          IconButton(
            icon: const Icon(Icons.pets),
            onPressed: () {
              // 곰돌이 아이콘 버튼 동작
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomePage(),
          const ChatPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: DesignSystem.textBrown,
        unselectedItemColor: DesignSystem.textGrey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: DesignSystem.backgroundBeige,
      ),
    );
  }
}
