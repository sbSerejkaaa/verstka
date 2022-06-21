import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 237, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 21, 33, 100),
        title: Text(
          'Управление',
          style: TextStyle(
            fontSize: 17.5,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              ButtomOne(),
              SizedBox(
                height: 4,
              ),
              ButtomTwo(),
              SizedBox(
                height: 10,
              ),
              ButtomThree(),
            ],
          )),
    ));
  }
}

class ButtomOne extends StatefulWidget {
  const ButtomOne({Key? key}) : super(key: key);

  @override
  _ButtomOne createState() => _ButtomOne();
}

class _ButtomOne extends State<ButtomOne> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        children: [
          Text('Saunaboss'),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.blue,
            activeColor: Colors.indigo,
          ),
        ],
      ),
    );
  }
}

class ButtomTwo extends StatefulWidget {
  const ButtomTwo({Key? key}) : super(key: key);

  @override
  _ButtomTwoState createState() => _ButtomTwoState();
}

class _ButtomTwoState extends State<ButtomTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 35),
            Icon(
              Icons.sunny,
              color: Colors.orange,
              size: 30,
            ),
            SizedBox(height: 10),
            Icon(Icons.speed, color: Colors.indigo, size: 250),
            SizedBox(height: 30),
            Icon(Icons.device_thermostat, color: Colors.indigo),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: OutlinedButton(
                      onPressed: () {
                        print('Окошко работает');
                      },
                      child: Icon(
                        Icons.web_asset,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: OutlinedButton(
                    onPressed: () {
                      print('Туча работает');
                    },
                    child: Icon(Icons.cloud, size: 40),
                  ),
                )),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: OutlinedButton(
                      onPressed: () {
                        print('Тетрадки работают');
                      },
                      child: Icon(Icons.library_books_outlined, size: 40),
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

class ButtomThree extends StatefulWidget {
  const ButtomThree({Key? key}) : super(key: key);

  @override
  _ButtomThreeState createState() => _ButtomThreeState();
}

class _ButtomThreeState extends State<ButtomThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 21, 33, 100),
      width: double.infinity,
      height: 77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print('Управление включено');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.manage_accounts_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('Управление',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print('Устройства включены');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.device_hub_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('Устройства',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print('Таймер запущен');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('Таймер',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print('События открыты');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.event,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('События',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
