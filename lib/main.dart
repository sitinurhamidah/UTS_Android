import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new CardProfile(),
  routes: <String, WidgetBuilder>{
    'CardProfile': (BuildContext context) => new CardProfile(),
    'Detail': (BuildContext context) => new Detail(),
  },
));

class CardProfile extends StatelessWidget {
  const CardProfile ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.teal,
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: new Icon(
            Icons.account_circle,
          ),
          title: new Text(
            "Profile Page",
            style: TextStyle(color: Colors.teal),
          ), 
        ),
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/midah.jpeg'),
            ),
            Text('siti nurhamidah', style: TextStyle(
               fontFamily: 'Pacifico',
               fontSize: 40.0,
               color: Colors.white,
               fontWeight: FontWeight.bold),
            ),
            Text('FLUTTER DEVELOPER', style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text('+62 831 4149 7446', style: TextStyle(
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0),
                ),
                onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
                ),
              ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text('sitinurhamidah23022001@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans Pro'),
                ),
                onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text('Siti Nurhamidah',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro'),
              ),
              onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text('19710008',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro'),
              ),
              onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.teal,
              ),
              title: Text('Perempuan',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro'),
              ),
              onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.teal,
              ),
              title: Text('Universitas Islam Kalimantan',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: 'Source Sans Pro'),
              ),
              onTap: (){
                  Navigator.popAndPushNamed(context, 'Detail');
                },
              ),
            ),
          ],
        ),
        ),
      );
  }
}

class Detail extends StatelessWidget{
  const Detail({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.teal,
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: new Icon(
            Icons.account_circle,
          ),
          title: new Text(
            "Detail Page",
            style: TextStyle(color: Colors.teal),
          ), 
        ),
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Nama Lengkap : Siti Nurhamidah',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'CardProfile');
                },
                icon: Icon(Icons.exit_to_app, color: Colors.white))
          ],
            ),
        ),
    );
  }
}