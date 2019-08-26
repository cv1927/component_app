import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      min: 10.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: ( _bloquearCheck ) ? null : ( valor ) {

        setState(() {
          print(valor);
          _valorSlider = valor;
        });

      },
    );

  }

  Widget _crearImagen() {

    return FadeInImage(

      image: NetworkImage('https://store-images.s-microsoft.com/image/apps.31945.65500171164579046.1a7abf1b-5051-48d9-a5a5-f6f9ae7914a7.7dace43e-308c-4064-9aac-7275561bde36?mode=scale&q=90&h=1080&w=1920'),
      width: _valorSlider,
      fit: BoxFit.contain,
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration( milliseconds: 500 ),

    );

  }

  Widget _crearCheckbox() {

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor) {

    //     setState(() {
    //       _bloquearCheck = valor;
    //     });

    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {

        setState(() {
          _bloquearCheck = valor;
        });

      },
    );

  }

  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {

        setState(() {
          _bloquearCheck = valor;
        });

      },
    );

  }
  
}