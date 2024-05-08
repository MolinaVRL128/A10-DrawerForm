import 'package:flutter/material.dart';
import 'package:molina/drawer_menu.dart';

class FormS1 extends StatefulWidget {
  static const String routeName = '/formS1';

  @override
  _FormS1State createState() => _FormS1State();
}

class _FormS1State extends State<FormS1> {
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController calleController = TextEditingController();
  TextEditingController coloniaController = TextEditingController();
  TextEditingController nExteriorController = TextEditingController();
  TextEditingController nTelefonoController = TextEditingController();
  TextEditingController empleadosController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController stockController = TextEditingController();

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
                'Formulario Sucursal',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff361010)),
              ),
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
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('NOMBRE', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el nombre de sucursal',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('CALLE', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: calleController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la calle de sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('COLONIA', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: coloniaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.home, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la colonia de sucursal',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('N. EXTERIOR', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nExteriorController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe N. Exterior de sucursal',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('N. TELFONO', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nTelefonoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el numero de sucursal',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('EMPLEADOS', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: empleadosController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person_2, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe numero de empleados',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('CIUDAD', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ciudadController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.place_outlined,
                      color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe ciudad donde se ubica',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idSucursalController.text);
                  print(nombreController.text);
                  print(calleController.text);
                  print(coloniaController.text);
                  print(nExteriorController.text);
                  print(nTelefonoController.text);
                  print(empleadosController.text);
                  print(ciudadController.text);
                  print(stockController.text);
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
