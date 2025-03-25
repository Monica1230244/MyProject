import 'package:flutter/material.dart';

class Accueil1 extends StatelessWidget {
  const Accueil1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/images.jpg',
              width: 500,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Bienvenue à Waouh Monde'),
                      Text(
                        "L'entreprise idéale pour la réalisation de vos projets",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.star, color: Colors.red),
                const Text('41'),
              ],
            ),
            const SizedBox(height: 20),

            const ButtonSection(),


            const SizedBox(height: 30),

            const TextSection(
              description: 'Waouh Monde est une entreprise spécialisée dans le développement '
                  'd\'applications mobiles et web sur mesure. Ils offrent des solutions '
                  'innovantes adaptées aux besoins spécifiques de leurs clients, en mettant '
                  'l\'accent sur la digitalisation et l\'innovation. Leur expertise couvre '
                  'la création de sites web attrayants et fonctionnels, ainsi que des '
                  'applications mobiles qui répondent aux exigences modernes des entreprises.',
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          const SizedBox(width: 5),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          const SizedBox(width: 5),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      );

  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 20),
        Text(
          label,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(description, softWrap: true),
    );
  }
}
