import 'package:flutter/material.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/profile.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Wisswaprint London",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Hello!\nMy name is [Your Name], and I'm a passionate dog lover..."
                "\nsee more...",
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _contactButton(Icons.account_circle, "Youknow"),
                _contactButton(Icons.mail, "me@gmail.com"),
                _contactButton(Icons.phone, "093-123-1234"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactButton(IconData icon, String text) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 18, color: Colors.black),
      label: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
