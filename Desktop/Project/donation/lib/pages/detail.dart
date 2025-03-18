import 'package:flutter/material.dart';
import '../widgets/owner_card.dart';
import '../widgets/info_chip.dart';

class PetDetailPage extends StatelessWidget {
  const PetDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Happy Paw ', style: TextStyle(color: Colors.black)),
            Icon(Icons.pets, color: Colors.black),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/dog.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  "Dobber ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "(Labrador)",
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {},
                ),
              ],
            ),
            const Text(
              "♀ Nakornpathom",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                InfoChip(text: "5 month", color: Colors.teal[200]!),
                const SizedBox(width: 8),
                InfoChip(text: "Male", color: Colors.teal[300]!),
              ],
            ),
            const SizedBox(height: 10),
            InfoChip(text: "2 kg", color: Colors.amber[400]!),
            const SizedBox(height: 20),
            const OwnerCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
