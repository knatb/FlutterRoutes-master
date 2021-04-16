import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('ABRIR ALERTA'),
            onPressed: () => _showAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, shape: StadiumBorder())),
      ),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.red[200],
      builder: (context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('cozmicat08'),
            titlePadding: EdgeInsets.only(left: 90.0, top: 30.0),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/9a/c3/9a/9ac39a39c584586a4ef7b881220252bd.jpg'),
                  radius: 25,
                  child: Text('KL'),
                  foregroundColor: Colors.white,
                ),
                Text('www.twitch.tv/cozmicat08'),
              ],
            ),
            backgroundColor: Colors.grey[300],
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancel'),
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pushNamed('avatar'),
                child: Text('Ir al perfil'),
                style: TextButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ]);
      },
    );
  }
}
