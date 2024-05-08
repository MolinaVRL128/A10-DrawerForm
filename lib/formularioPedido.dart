import 'package:flutter/material.dart';
import 'package:molina/drawer_menu.dart';

class FormP3 extends StatefulWidget {
  static const String routeName = '/formP3';

  @override
  _FormP3State createState() => _FormP3State();
}

class _FormP3State extends State<FormP3> {
  TextEditingController idPedidoController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController detallesController = TextEditingController();
  TextEditingController preciototalController = TextEditingController();
  TextEditingController fechaEntregaController = TextEditingController();

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
                'Formulario Pedido',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff361010)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID PEDIDO', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idPedidoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.barcode_reader,
                      color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el ID de pedido',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('ID Cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idClienteController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el ID del cliente',
                ),
                keyboardType: TextInputType.number,
              ),
              //some space between email and mobile
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
              SizedBox(
                height: 10,
              ),
              const Text('CANTIDAD', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantidadController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.format_list_numbered,
                      color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe la cantidad comprada',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('DETALLES', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: detallesController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.list_alt, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe los detalles',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('PRECIO TOTAL', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: preciototalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.payment, color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: 'Escribe el precio total',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('FECHA ENTREGA', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaEntregaController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_month,
                      color: Color(0xff361010)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff361010)), // Color del borde
                  ),
                  hintText: '00 / 00 / 0000',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idPedidoController.text);
                  print(idClienteController.text);
                  print(idEmpleadoController.text);
                  print(idSucursalController.text);
                  print(cantidadController.text);
                  print(detallesController.text);
                  print(preciototalController.text);
                  print(fechaEntregaController.text);
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
                child: const Text(
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
