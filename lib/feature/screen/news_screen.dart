// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables/, sort_child_properties_last
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              'ANTUMN',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 8.0,
                    color: Color.fromARGB(255, 4, 185, 40),
                    offset: Offset(5.0, 5.0),
                  ),
                ],
                color: Color.fromARGB(255, 4, 185, 40),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.notifications_outlined),
                SizedBox(width: 20),
                Icon(Icons.search_outlined),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container (
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromARGB(255, 51, 96, 72),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                  color: const Color.fromARGB(255, 31, 121, 191),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/image.png"), fit: BoxFit.cover),     
                ),
                height: 200,
                width: double.infinity,
                child: Container(
                  color: Colors.black38,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll<Color>(Colors.green),
                          ),
                          
                          child: Text(
                            "Enviroment",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const Text(
                        "I am a Student at kathford College and I am also a Flutter developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Sah.jpg"),
                            radius: 15,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Ramesh Shah",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Hot News",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 228, 238, 229),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              const Color.fromARGB(255, 4, 185, 40)),
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Business",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 228, 238, 229),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              const Color.fromARGB(255, 4, 185, 40)),
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 228, 238, 229),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              const Color.fromARGB(255, 4, 185, 40)),
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Education",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 228, 238, 229),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              const Color.fromARGB(255, 4, 185, 40)),
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Entertainment",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 228, 238, 229),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll<Color>(
                              const Color.fromARGB(255, 4, 185, 40)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 12,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/Ram.JPG"),
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Sah.jpg"),
                            radius: 10,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Ramesh Shah"),
                              Text(
                                "I am a Student at kathford College.",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 28),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.bookmark_add),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Ram.JPG"),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/Sah.jpg"),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ramesh Shah"),
                          Text(
                            "I am a Student at kathford College.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 28),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.bookmark_add),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Ram.JPG"),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/Sah.jpg"),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ramesh Shah"),
                          Text(
                            "I am a Student at kathford College.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 28),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.bookmark_add),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Ram.JPG"),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/Sah.jpg"),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ramesh Shah"),
                          Text(
                            "I am a Student at kathford College.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 28),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.bookmark_add),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Ram.JPG"),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/Sah.jpg"),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ramesh Shah"),
                          Text(
                            "I am a Student at kathford College.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 28),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.bookmark_add),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 96, 234, 65),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
