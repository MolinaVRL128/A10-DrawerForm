import 'package:flutter/material.dart';
import 'package:molina/drawer_menu.dart';

class FormE2 extends StatefulWidget {
  static const String routeName = '/formE2';

  @override
  _FormE2State createState() => _FormE2State();
}

class _FormE2State extends State<FormE2> {
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController nombresController = TextEditingController();
  TextEditingController apellidosController = TextEditingController();
  TextEditingController puestoController = TextEditingController();
  TextEditingController calleController = TextEditingController();
  TextEditingController coloniaController = TextEditingController();
  TextEditingController salarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pasteleria Sweet Queen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff361010),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Empleados',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff361010)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID EMPLEADO', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idEmpleadoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del empleado',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('ID SUCURSAL', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idSucursalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el ID de sucursal',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('NOMBRES', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombresController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe los nombres',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('APELLIDOS', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidosController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe los apellidos',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('PUESTO', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: puestoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.perm_contact_cal,
                      color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el puesto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('CALLE', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: calleController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.home, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la calle',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('COLONIA', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: coloniaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.auto_stories, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la colonia',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('SALARIO', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: salarioController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la cantidad de salario',
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idEmpleadoController.text);
                  print(idSucursalController.text);
                  print(nombresController.text);
                  print(apellidosController.text);
                  print(puestoController.text);
                  print(calleController.text);
                  print(coloniaController.text);
                  print(salarioController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff361010)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
