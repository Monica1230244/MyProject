import 'package:flutter/material.dart';


class Accueil extends StatelessWidget{
  const Accueil ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      backgroundColor: Colors.black,
      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(

              'Buying your',
              style: TextStyle(

                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "own house",

              style: TextStyle(

                color: Colors.greenAccent,
                fontSize: 40,
              ),
            ),

            const SizedBox(height: 30),

            Text(
              'CashPilot helps you calculate the cost of buying a home through '
                  'its CashHome planning tool, which integrates various personal '
                  'financial parameters and external data to project affordability.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),


            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '1',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Current Financial Standing',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),





            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all( width: 2),
                    ),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[


                        Row(
                          children: [
                            const Text(
                              'Current net worth',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 20),
                            const Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.white,
                            ),
                          ],
                        ),



                        const SizedBox(height: 5),
                        const Text(
                          "\$ 35,981.00",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            side: const BorderSide(color: Colors.white, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 0),
                ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Row(
                children: [
                const Text(
                'Income',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
                      SizedBox(width: 15),
                      const Icon(
                        Icons.circle,
                        size: 8,

                        color: Colors.white,
                      ),
                ],

              ),
            const SizedBox(height: 5),

            const Text(
            '\$ 21,231.00',
            style: TextStyle(color: Colors.white, fontSize: 30),
            ),
                    const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    side: const BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                      ),
                      ),
                        child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [

                        Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                   ],
                ),
               ),
              ),

              ],
            ),


            SizedBox(width: 20),
        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Row(
                      children: [
                        const Text(
                          'Existing debt',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        const Icon(
                          Icons.circle,
                          size: 8,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '\$ 0',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 15),

                     const Text('You so not any existing debt',
                       style: TextStyle(color: Colors.white, fontSize: 16),
                     ),

                  ],
                ),
              ),
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 0),
                ),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Financial accounts',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),

                    Row(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 0),
                          child: Icon(Icons.account_balance_wallet, color: Colors.red, size: 30),
                        ),
                        Transform.translate(
                          offset: Offset(-10, 0),
                          child: Icon(Icons.account_circle_rounded, color: Colors.green, size: 30),
                        ),
                        Transform.translate(
                          offset: Offset(-25, 0),
                          child: Icon(Icons.account_box_sharp, color: Colors.blue, size: 30),
                        ),
                        Transform.translate(
                          offset: Offset(-35, 0),
                          child: Icon(Icons.add_circle, color: Colors.greenAccent, size: 30),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        side: const BorderSide(color: Colors.white, width: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.circle, color: Colors.white, size: 8),
                          SizedBox(width: 8),
                          Text(
                            'Link accounts',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            ],
        ),







          ],
        ),
      ),
    );
  }
}


