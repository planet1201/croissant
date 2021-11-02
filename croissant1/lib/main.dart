import 'package:croissant1/screen2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'croissant',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageStste createState() => _HomePageStste();
}

class _HomePageStste extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Croissant'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen2();
                  }));
                })
          ],
        ),
        body: Container(
          child: Products(),
        ));
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}
class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            GridView.count(
              primary: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen2()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'image/1.jpg',
                        width: 848,
                        height: 565,
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen2()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'image/2.jpg',
                        width: 848,
                        height: 565,
                      ),
                    ),
                  ),
                  
                ),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen2()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'image/3.jpg',
                        width: 848,
                        height: 565,
                      ),
                    ),
                  ),
                  
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
