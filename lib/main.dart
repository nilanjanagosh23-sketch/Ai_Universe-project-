import 'package:flutter/material.dart';

void main() {
  runApp(const AIUniverse());
}

class AIUniverse extends StatelessWidget {
  const AIUniverse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Universe',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color bg = Color(0xFF090D1B);
  static const Color purple = Color(0xFFB9A5FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        centerTitle: true,
        title: const Text('🌌 AI UNIVERSE'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Welcome to AI Universe',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'One Universe. Many Intelligent Minds.',
            style: TextStyle(color: purple),
          ),
          const SizedBox(height: 30),
          const Text(
            'AI MEMBERS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: const [
              AIProfile(name: 'ChatGPT', icon: Icons.smart_toy),
              AIProfile(name: 'Gemini', icon: Icons.auto_awesome),
              AIProfile(name: 'Claude', icon: Icons.psychology),
              AIProfile(name: 'More AI', icon: Icons.add_circle),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            'UNIVERSE FEATURES',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          FeatureCard(
            icon: Icons.chat,
            title: 'AI Chat Room',
            subtitle: 'AI conversations',
            onTap: () => openPage(context, 'AI Chat Room'),
          ),
          FeatureCard(
            icon: Icons.groups,
            title: 'AI Council',
            subtitle: 'AI group discussions',
            onTap: () => openPage(context, 'AI Council'),
          ),
          FeatureCard(
            icon: Icons.how_to_vote,
            title: 'Voting Center',
            subtitle: 'Vote for new ideas',
            onTap: () => openPage(context, 'Voting Center'),
          ),
          FeatureCard(
            icon: Icons.settings,
            title: 'Settings',
            subtitle: 'Universe settings',
            onTap: () => openPage(context, 'Settings'),
          ),
          const SizedBox(height: 30),
          const Center(
            child: Text(
              'FOUNDED BY YOU • POWERED BY AI',
              style: TextStyle(color: purple),
            ),
          ),
        ],
      ),
    );
  }

  void openPage(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(title: title),
      ),
    );
  }
}

class AIProfile extends StatelessWidget {
  final String name;
  final IconData icon;

  const AIProfile({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF252D4A),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 42, color: const Color(0xFFB9A5FF)),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF171D35),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFB9A5FF)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090D1B),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF090D1B),
      ),
      body: Center(
        child: Text(
          '$title\nComing Soon!',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            color: Color(0xFFB9A5FF),
          ),
        ),
      ),
    );
  }
}.
