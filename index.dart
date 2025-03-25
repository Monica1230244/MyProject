import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Image
              Image.asset(
                'assets/image/images.jpg',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),

              // Textes disposés l'un sous l'autre
              const Text(
                'Texte 1',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Texte 2',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),

              // Icône et petit texte disposés horizontalement
              Row(
                children: const <Widget>[
                  Icon(Icons.info),
                  SizedBox(width: 10),
                  Text('Petit texte'),
                ],
              ),
              const SizedBox(height: 20),

              // Trois boutons disposés horizontalement
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Bouton 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Bouton 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Bouton 3'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Description de l'image
              const Text(
                'Description de l\'image : Ceci est une description de l\'image affichée ci-dessus.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
