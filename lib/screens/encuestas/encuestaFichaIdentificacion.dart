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
  TextEditingController direccionTrabajoPadre = new TextEditingController();
  TextEditingController direccionTrabajoMadre = new TextEditingController();
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
            "Encuesta",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(60.0),
            child: Form(
              key: keyForm,
              child: formUI(context),
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
  String estudiosEscolaresTutoresMadre = 'Prim';
  String estadoTutorPadre = 'Vive';
  String estadoTutorMadre = 'Vive';

  Widget formUI(context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Text(
          "Ficha de identificaci??n",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: colorPrimary),
        ),
        Container(
          height: size.height * 0.4,
          child: Image.asset("assets/images/img-login.png"),
        ),

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
                labelText: 'N??mero de control',
              ),
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
            )),
        formItemsDesign(
            Icons.local_convenience_store_outlined,
            TextFormField(
              controller: peso,
              decoration: InputDecoration(
                labelText: 'Peso',
              ),
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: lugarNac,
              decoration: InputDecoration(
                labelText: 'Lugar de nacimiento',
              ),
            )),
        formItemsDesign(
            Icons.location_history,
            TextFormField(
              controller: direccion,
              decoration: InputDecoration(
                labelText: 'Direcci??n de procedencia',
              ),
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
            Icons.check_box,
            TextFormField(
              controller: facebook,
              decoration: InputDecoration(
                labelText: 'Facebook',
              ),
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: institucionP,
              decoration: InputDecoration(
                labelText: 'Instituci??n de procedencia',
              ),
            )),
        formItemsDesign(
            Icons.home_filled,
            TextFormField(
              controller: especialidad,
              decoration: InputDecoration(
                labelText: 'Especialidad',
              ),
            )),

        formItemsDesign(
            Icons.av_timer_sharp,
            TextFormField(
              controller: promedio,
              decoration: InputDecoration(
                labelText: 'Promedio',
              ),
            )),

        formItemsDesign(
            Icons.public,
            TextFormField(
              controller: ceneval,
              decoration: InputDecoration(
                labelText: 'Ceneval',
              ),
            )),

        formItemsDesign(
            Icons.golf_course,
            TextFormField(
              controller: cursoP,
              decoration: InputDecoration(
                labelText: 'Curso Propedeutico',
              ),
            )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("??Has estado becado?"),
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
              Text("??De donde proviene la beca?"),
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
              Text("En el transcurso de tus estudios vivir??s:"),
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
            Icons.location_city,
            TextFormField(
              controller: direccionActual,
              decoration: InputDecoration(
                labelText: 'Direcci??n actual',
              ),
            )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("??Trabajas?"),
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
            )),
        formItemsDesign(
            Icons.schedule,
            TextFormField(
              controller: horario,
              decoration: InputDecoration(
                labelText: 'Horario',
              ),
            )),
        Text("Maximo grado de estudios escolares:"),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Padre"),
              RadioListTile<String>(
                title: const Text('Primaria'),
                value: 'primaria',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Secundaria'),
                value: 'secundaria',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Bachillerato'),
                value: 'bachillerato',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Licenciatura'),
                value: 'licenciatura',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Postgrado'),
                value: 'postgrado',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Sin estudios'),
                value: 'sinestudios',
                groupValue: estudiosEscolaresTutores,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutores = value;
                  });
                },
              ),
            ])),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Madre"),
              RadioListTile<String>(
                title: const Text('Primaria'),
                value: 'primaria',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Secundaria'),
                value: 'secundaria',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Bachillerato'),
                value: 'bachillerato',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Licenciatura'),
                value: 'licenciatura',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Postgrado'),
                value: 'postgrado',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Sin estudios'),
                value: 'sinestudios',
                groupValue: estudiosEscolaresTutoresMadre,
                onChanged: (value) {
                  setState(() {
                    estudiosEscolaresTutoresMadre = value;
                  });
                },
              ),
            ])),
        Text("Actualmente tu:"),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Padre"),
              RadioListTile<String>(
                title: const Text('Vive'),
                value: 'vive',
                groupValue: estadoTutorPadre,
                onChanged: (value) {
                  setState(() {
                    estadoTutorPadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Finado'),
                value: 'finado',
                groupValue: estadoTutorPadre,
                onChanged: (value) {
                  setState(() {
                    estadoTutorPadre = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Madre"),
              RadioListTile<String>(
                title: const Text('Vive'),
                value: 'vive',
                groupValue: estadoTutorMadre,
                onChanged: (value) {
                  setState(() {
                    estadoTutorMadre = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Finado'),
                value: 'finado',
                groupValue: estadoTutorMadre,
                onChanged: (value) {
                  setState(() {
                    estadoTutorMadre = value;
                  });
                },
              )
            ])),
        Text("Nombre o lugar de trabajo de:"),
        formItemsDesign(
            Icons.work,
            TextFormField(
              controller: direccionTrabajoPadre,
              decoration: InputDecoration(
                labelText: 'Trabajo del padre',
              ),
            )),
        formItemsDesign(
            Icons.work,
            TextFormField(
              controller: direccionTrabajoMadre,
              decoration: InputDecoration(
                labelText: 'Trabajo de la madre',
              ),
            )),
        Text("En caso de accidente avisar a:"),
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nombreCasoAccidente,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.phone,
            TextFormField(
              controller: telefonoCasoAccidente,
              decoration: InputDecoration(
                labelText: 'Tel??fono',
              ),
              validator: validateMobile,
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: observaciones,
              decoration: InputDecoration(
                labelText: 'Observaciones',
              ),
            )),

        
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
      return "Las contrase??as no coinciden";
    }
    return null;
  }

  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El campo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El campo debe de ser a-z y A-Z";
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

  String validateNumeroControl(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "El n??mero de control es necesario";
    } else if (value.length != 10) {
      return "El n??mero debe tener 10 digitos";
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
