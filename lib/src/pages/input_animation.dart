import 'package:flutter/material.dart';

class InputAnimation extends StatefulWidget {
  @override
  _InputAnimationState createState() => _InputAnimationState();
}

class _InputAnimationState extends State<InputAnimation> {
  double _width = 20.0, _height = 20.0;
  double _borderCounter = 0.0;
  int _globalCounter = 0, _figureCounter = 1;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica Input Animation'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        children: <Widget>[_createInput(), Divider(), _createAnimation()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            counter: Text('Contador Caracteres $_globalCounter'),
            hintText: 'Nombre Completo',
            labelText: 'Nombre',
            helperText: 'Sólo letras',
            suffixIcon: Icon(Icons.accessibility),
            prefixIcon: Icon(Icons.account_balance),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
        onChanged: (value) {
          _setOrModifyFigure();
        });
  }

  Widget _createAnimation() {
    return Align(
        alignment: Alignment(0.0, 0.0),
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ));
  }

  _setOrModifyFigure() {
    if (_globalCounter >= 10) {
      if (_figureCounter == 3) {
        setState(() {
          _figureCounter = 1;
        });
      } else {
        _figureCounter++;
      }
      setState(() {
        _globalCounter = 0;
        _width = 20.0;
        _height = 20.0;
        _borderCounter = 0.0;
        _borderRadius = BorderRadius.circular(_borderCounter);
      });
    }

    switch (_figureCounter) {
      case 1:
        //Set State en caso de ser cuadrado
        setState(() {
          _globalCounter++;
          _width += 10.0;
          _height += 10.0;
          _color = Colors.yellow;
          _borderRadius = BorderRadius.circular(_borderCounter);
        });
        break;
      case 2:
        //Set State en caso de ser un circulo
        setState(() {
          _globalCounter++;
          _width += 10.0;
          _height += 10.0;
          _borderCounter += 20.0;
          _color = Colors.blue;
          _borderRadius = BorderRadius.circular(_borderCounter);
        });
        break;
      case 3:
        //Set State en caso de ser un rectangulo
        setState(() {
          _globalCounter++;
          _width += 25.0;
          _height += 10.0;
          _color = Colors.red;
          _borderRadius = BorderRadius.circular(_borderCounter);
        });
        break;
    }
    ;
  }
}
