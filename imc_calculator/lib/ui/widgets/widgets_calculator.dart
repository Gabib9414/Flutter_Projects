import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput(
      {super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            prefixIcon: const Icon(Icons.person),
            // ignore: prefer_const_constructors
            labelStyle: TextStyle(fontSize: 18, color: Colors.black87),
            labelText: label,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  MyText({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // ignore: prefer_const_constructors
      style: TextStyle(
          color: Colors.black87, fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.pressed, required this.lblText});

  final Text lblText;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
      child: lblText,
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      // ignore: sort_child_properties_last
      child: child,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(31, 228, 226, 226).withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}

class MyAppBarContainer extends StatelessWidget {
  const MyAppBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 102, 200, 222),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Table(
        border: TableBorder.all(color: Colors.blue),
        children: const [
          TableRow(children: [
            Text('Menor a 18.5'),
            Text('PESO BAJO'),
          ]),
          TableRow(children: [
            Text('18.6 a 24.9'),
            Text('PESO NORMAL'),
          ]),
          TableRow(children: [
            Text('25 a 29.9'),
            Text('SOBREPESO'),
          ]),
          TableRow(children: [
            Text('30 a 34.9'),
            Text('OBESIDAD LEVE'),
          ]),
          TableRow(children: [
            Text('35 a 39.9'),
            Text('OBESIDAD MEDIA'),
          ]),
          TableRow(children: [
            Text('Mayor a 40'),
            Text('OBESIDAD MÓRBIDA'),
          ]),
        ],
      ),
    );
  }
}
