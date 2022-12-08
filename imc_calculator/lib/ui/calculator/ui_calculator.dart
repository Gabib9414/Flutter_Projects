import 'package:flutter/material.dart';
import 'package:imc_calculator/ui/widgets/widgets_calculator.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  String respuesta = "RESPUESTA";
  double imc = 0.0;

  void _calcular() {
    setState(() {
      double peso = double.parse(_pesoController.text);
      double altura = double.parse(_alturaController.text) / 100;
      imc = peso / (altura * altura);
      respuesta = imc.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My Calculator IMC')),
      ),
      body: SingleChildScrollView(
        child: MyContainer(
          child: Column(
            children: [
              Stack(
                children: const [
                  MyAppBarContainer(),
                ],
              ),
              _sizeEspacio(),
              MyTextInput(
                  inputController: _pesoController, label: "Peso en Kg"),
              MyTextInput(
                  inputController: _alturaController, label: "Altura en cm"),
              _sizeEspacio(),
              MyText(text: respuesta.toString()),
              _sizeEspacio(),
              MyButton(
                lblText: const Text("Calcular"),
                pressed: (() => _calcular()),
              ),
              _sizeEspacio(),
              MyTable(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _sizeEspacio() {
  return const SizedBox(
    height: 30,
  );
}
