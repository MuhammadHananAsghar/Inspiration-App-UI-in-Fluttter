import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(fontFamily: 'Euclid'),
      ),
    );

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            )),
      ),
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    'Find Your',
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 5,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Inspiration',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.black87,
                          ),
                          hintText: "Search you're looking for",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Today',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard(
                            'https://fsb.zobj.net/crop.php?r=qpQfktQWlhwoKuaR4xcSRLHU_SQhlONczo4LT5g0B11hJhoPnoGGvf9Je_2WhkhY07GIzFPJdKEEoQaGRrIaZEmDPcOExrvpTMlRR6lFaJ4TlDOA3gtPF0PGz6HeXJMl2kX16o8Pg5jm_idIVGNtV60Qbh-ZF0JdYDqDAnaU5r1Y1rp9ryiznaQgcTIBAEi4vBhjeioocTOOoS8k'),
                        promoCard(
                            'https://fsb.zobj.net/crop.php?r=qpQfktQWlhwoKuaR4xcSRLHU_SQhlONczo4LT5g0B11hJhoPnoGGvf9Je_2WhkhY07GIzFPJdKEEoQaGRrIaZEmDPcOExrvpTMlRR6lFaJ4TlDOA3gtPF0PGz6HeXJMl2kX16o8Pg5jm_idIVGNtV60Qbh-ZF0JdYDqDAnaU5r1Y1rp9ryiznaQgcTIBAEi4vBhjeioocTOOoS8k'),
                        promoCard(
                            'https://fsb.zobj.net/crop.php?r=qpQfktQWlhwoKuaR4xcSRLHU_SQhlONczo4LT5g0B11hJhoPnoGGvf9Je_2WhkhY07GIzFPJdKEEoQaGRrIaZEmDPcOExrvpTMlRR6lFaJ4TlDOA3gtPF0PGz6HeXJMl2kX16o8Pg5jm_idIVGNtV60Qbh-ZF0JdYDqDAnaU5r1Y1rp9ryiznaQgcTIBAEi4vBhjeioocTOOoS8k'),
                        promoCard(
                            'https://fsb.zobj.net/crop.php?r=qpQfktQWlhwoKuaR4xcSRLHU_SQhlONczo4LT5g0B11hJhoPnoGGvf9Je_2WhkhY07GIzFPJdKEEoQaGRrIaZEmDPcOExrvpTMlRR6lFaJ4TlDOA3gtPF0PGz6HeXJMl2kX16o8Pg5jm_idIVGNtV60Qbh-ZF0JdYDqDAnaU5r1Y1rp9ryiznaQgcTIBAEi4vBhjeioocTOOoS8k'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.orange,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1656775765759-91e35e011db9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'))),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.1),
                              ],
                              begin: Alignment.bottomRight,
                              stops: const [0.1, 0.9])),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Best Design',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.0),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
