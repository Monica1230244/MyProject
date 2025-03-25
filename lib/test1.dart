import 'package:flutter/material.dart';

class Accueil3 extends StatefulWidget {
  const Accueil3({super.key});

  @override
  _Accueil3State createState() => _Accueil3State();
}

class _Accueil3State extends State<Accueil3> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Accueil'),
    Text('Recherche'),
    Text('Enregistrer'),
    Text('Profil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              'assets/image/img1.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildCustomBar(),
              const SizedBox(height: 20),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildContent(),
                      const Spacer(),
                      BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.grey,
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.search),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.save),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person),
                            label: '',
                          ),
                        ],
                        currentIndex: _selectedIndex,
                        onTap: _onItemTapped,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCustomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.9),
        borderRadius: BorderRadius.circular(35),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Search flight or aircraft',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  "Trending flights",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(width: 10),
              const Text(
                "Flights near you",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'T',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "TVF6474",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text("T06474", style: TextStyle(color: Colors.white)),
                  Text("B738", style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Paris", style: TextStyle(color: Colors.white)),
                  Text("Djerba", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("ORY", style: TextStyle(color: Colors.white, fontSize: 25)),
                  Icon(Icons.airplane_ticket_sharp, color: Colors.white),
                  Text("DJE", style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.info),
                  Text(
                    "RYR6474",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text("FR312", style: TextStyle(color: Colors.white)),
                  Text("B3BM", style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Paris", style: TextStyle(color: Colors.white)),
                  Text("Barcelone", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("BVA", style: TextStyle(color: Colors.white, fontSize: 25)),
                  Icon(Icons.airplane_ticket_sharp, color: Colors.white),
                  Text("BCN", style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),
            ],
          ),
        ),
        ],
    );
  }

  Widget _buildFlightCard(String code, String flightNum, String type, String fromCity, String fromCode, String toCity, String toCode) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(code, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green)),
              Text(flightNum, style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 10),
              Text(type, style: const TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fromCity, style: const TextStyle(color: Colors.white)),
              Text(toCity, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fromCode, style: const TextStyle(color: Colors.white, fontSize: 25)),
              const Icon(Icons.airplane_ticket_sharp, color: Colors.white),
              Text(toCode, style: const TextStyle(color: Colors.white, fontSize: 25)),
            ],
          ),
        ],
      ),
    );
  }
}
