import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _i = 0;
  String _info = 'Pode Entrar';

  void _change(int delta) {
    setState(() {
      _i += delta;

      if (_i < 0) {
        _i = 0;
        _info = 'Restaurante Vazio!';
      } else if (_i > 10) {
        _i = 10;
        _info = 'Lotado!';
      } else {
        _info = 'Pode Entrar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Stack(
      children: [
        Image.asset(
          'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pessoas: $_i',
              style: TextStyle(color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: () {
                      _change(1);
                    },
                    child: Text(
                      '+1',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: () {
                      _change(-1);
                    },
                    child: Text(
                      '-1',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              _info,
              style: TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
