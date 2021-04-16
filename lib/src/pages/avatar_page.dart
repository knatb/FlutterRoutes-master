import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          /*Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('KL'),
              backgroundColor: Colors.red[900],
            ),
          ),*/
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage : NetworkImage('https://i.pinimg.com/564x/9a/c3/9a/9ac39a39c584586a4ef7b881220252bd.jpg'),
              radius: 25,
              child: Text('KL'),
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://i.pinimg.com/564x/25/8a/07/258a079a7720ea2d002aced052736ae3.jpg'),
        fadeInDuration: Duration(milliseconds: 500),
        fit: BoxFit.cover
        ),
      )
    );
  }
}

//<div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>