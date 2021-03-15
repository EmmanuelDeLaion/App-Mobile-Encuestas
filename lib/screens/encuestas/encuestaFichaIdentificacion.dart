import 'package:encuestas/constants.dart';
import 'package:flutter/material.dart';

class EncuestaFichaIdentificacion extends StatefulWidget {
  @override
  _EncuestaFichaIdentificacionState createState() =>
      _EncuestaFichaIdentificacionState();
}

class _EncuestaFichaIdentificacionState
    extends State<EncuestaFichaIdentificacion> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController mobileCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  TextEditingController repeatPassCtrl = new TextEditingController();

  // Campos encuestas
  TextEditingController nombre = new TextEditingController();
  TextEditingController numeroControl = new TextEditingController();
  TextEditingController nombreTutor = new TextEditingController();
  TextEditingController estatura = new TextEditingController();
  TextEditingController peso = new TextEditingController();
  TextEditingController edad = new TextEditingController();
  TextEditingController sexo = new TextEditingController();
  TextEditingController fechaNac = new TextEditingController();
  TextEditingController lugarNac = new TextEditingController();
  TextEditingController telefono = new TextEditingController();
  TextEditingController correo = new TextEditingController();
  TextEditingController facebook = new TextEditingController();
  TextEditingController direccion = new TextEditingController();
  TextEditingController estadoCivil = new TextEditingController();
  TextEditingController institucionP = new TextEditingController();
  TextEditingController especialidad = new TextEditingController();
  TextEditingController promedio = new TextEditingController();
  TextEditingController ceneval = new TextEditingController();
  TextEditingController cursoP = new TextEditingController();
  TextEditingController becado = new TextEditingController();
  TextEditingController especifique = new TextEditingController();
  TextEditingController direccionActual = new TextEditingController();
  TextEditingController nombreEmpresa = new TextEditingController();
  TextEditingController horario = new TextEditingController();
  TextEditingController direccionTrabajo = new TextEditingController();
  TextEditingController nombreCasoAccidente = new TextEditingController();
  TextEditingController telefonoCasoAccidente = new TextEditingController();
  TextEditingController observaciones = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: colorPrimary,
          title: Text(
            "Ficha de identificación",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(60.0),
            child: Form(
              key: keyForm,
              child: formUI(),
            ),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  String genero = 'hombre';
  String estado = 'Soltero';
  String estadoBecado = 'Si';
  String procedenciaBeca = 'Gobierno Federal';
  String estanciaEstudios = 'Con mi familia';
  String estadoTrabajo = 'Si';
  String estudiosEscolaresTutores = 'Prim';

  Widget formUI() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nombre,
              decoration: new InputDecoration(
                labelText: 'Nombre',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nombreTutor,
              decoration: new InputDecoration(
                labelText: 'Nombre del tutor',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.check_box,
            TextFormField(
              controller: numeroControl,
              decoration: InputDecoration(
                labelText: 'Número de control',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Sexo"),
              RadioListTile<String>(
                title: const Text('Hombre'),
                value: 'hombre',
                groupValue: genero,
                onChanged: (value) {
                  setState(() {
                    genero = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Mujer'),
                value: 'mujer',
                groupValue: genero,
                onChanged: (value) {
                  setState(() {
                    genero = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            Icons.local_movies,
            TextFormField(
              controller: estatura,
              decoration: InputDecoration(
                labelText: 'Estatura',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.local_convenience_store_outlined,
            TextFormField(
              controller: peso,
              decoration: InputDecoration(
                labelText: 'Peso',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: lugarNac,
              decoration: InputDecoration(
                labelText: 'Lugar de nacimiento',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: direccion,
              decoration: InputDecoration(
                labelText: 'Dirección de procedencia',
              ),
              validator: validateName,
            )),

        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Estado civil"),
              RadioListTile<String>(
                title: const Text('Soltero'),
                value: 'soltero',
                groupValue: estado,
                onChanged: (value) {
                  setState(() {
                    estado = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Casado'),
                value: 'casado',
                groupValue: estado,
                onChanged: (value) {
                  setState(() {
                    estado = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Otro'),
                value: 'otro',
                groupValue: estado,
                onChanged: (value) {
                  setState(() {
                    estado = value;
                  });
                },
              ),
              TextFormField(
                controller: especifique,
                decoration: InputDecoration(
                  labelText: 'Especifique',
                ),
                validator: validateName,
              )
            ])),
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: emailCtrl,
              decoration: new InputDecoration(
                labelText: 'Correo',
              ),
              keyboardType: TextInputType.emailAddress,
              maxLength: 32,
              validator: validateEmail,
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: institucionP,
              decoration: InputDecoration(
                labelText: 'Institución de procedencia',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: especialidad,
              decoration: InputDecoration(
                labelText: 'Especialidad',
              ),
              validator: validateName,
            )),

        formItemsDesign(
            Icons.av_timer_sharp,
            TextFormField(
              controller: promedio,
              decoration: InputDecoration(
                labelText: 'Promedio',
              ),
              validator: validateName,
            )),

        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: ceneval,
              decoration: InputDecoration(
                labelText: 'Ceneval',
              ),
              validator: validateName,
            )),

        formItemsDesign(
            Icons.golf_course,
            TextFormField(
              controller: cursoP,
              decoration: InputDecoration(
                labelText: 'Curso Propedeutico',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("¿Has estado becado?"),
              RadioListTile<String>(
                title: const Text('Si'),
                value: 'si',
                groupValue: estadoBecado,
                onChanged: (value) {
                  setState(() {
                    estadoBecado = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'no',
                groupValue: estadoBecado,
                onChanged: (value) {
                  setState(() {
                    estadoBecado = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("¿De donde proviene la beca?"),
              RadioListTile<String>(
                title: const Text('Gobierno Federal'),
                value: 'gobiernofederal',
                groupValue: procedenciaBeca,
                onChanged: (value) {
                  setState(() {
                    procedenciaBeca = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Gobierno Estatal'),
                value: 'gobiernoestatal',
                groupValue: procedenciaBeca,
                onChanged: (value) {
                  setState(() {
                    procedenciaBeca = value;
                  });
                },
              )
            ])),

        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("En el transcurso de tus estudios vivirás:"),
              RadioListTile<String>(
                title: const Text('Con mi familia'),
                value: 'conmifamilia',
                groupValue: estanciaEstudios,
                onChanged: (value) {
                  setState(() {
                    estanciaEstudios = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Con familiares cercanos'),
                value: 'familiarescercanos',
                groupValue: estanciaEstudios,
                onChanged: (value) {
                  setState(() {
                    estanciaEstudios = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Con otros estudiantes'),
                value: 'conotrosestudiantes',
                groupValue: estanciaEstudios,
                onChanged: (value) {
                  setState(() {
                    estanciaEstudios = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Solo'),
                value: 'solo',
                groupValue: estanciaEstudios,
                onChanged: (value) {
                  setState(() {
                    estanciaEstudios = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: direccion,
              decoration: InputDecoration(
                labelText: 'Dirección actual',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("¿Trabajas?"),
              RadioListTile<String>(
                title: const Text('Si'),
                value: 'si',
                groupValue: estadoTrabajo,
                onChanged: (value) {
                  setState(() {
                    estadoTrabajo = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'no',
                groupValue: estadoTrabajo,
                onChanged: (value) {
                  setState(() {
                    estadoTrabajo = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: nombreEmpresa,
              decoration: InputDecoration(
                labelText: 'Nombre de la empresa',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: horario,
              decoration: InputDecoration(
                labelText: 'Horario',
              ),
              validator: validateName,
            )),
            Text(
              "Maximo grado de estudios escolares:"
            ),

        // formItemsDesign(
        //     Icons.remove_red_eye,
        //     TextFormField(
        //       controller: passwordCtrl,
        //       obscureText: true,
        //       decoration: InputDecoration(
        //         labelText: 'Contraseña',
        //       ),
        //     )),
        // formItemsDesign(
        //     Icons.remove_red_eye,
        //     TextFormField(
        //       controller: repeatPassCtrl,
        //       obscureText: true,
        //       decoration: InputDecoration(
        //         labelText: 'Repetir la Contraseña',
        //       ),
        //       validator: validatePassword,
        //     )),
        GestureDetector(
            onTap: () {
              save();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  color: colorPrimary),
              child: Text("Guardar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))
      ],
    );
  }

  String validatePassword(String value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "El telefono es necesariod";
    } else if (value.length != 10) {
      return "El numero debe tener 10 digitos";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  save() {
    if (keyForm.currentState.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Telefono ${mobileCtrl.text}");
      print("Correo ${emailCtrl.text}");
      keyForm.currentState.reset();
    }
  }
}
