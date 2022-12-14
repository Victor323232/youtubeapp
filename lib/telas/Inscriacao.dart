import 'package:flutter/material.dart';
class Inscricao extends StatefulWidget {
  const Inscricao({Key? key}) : super(key: key);

  @override
  State<Inscricao> createState() => _InscricaoState();
}

class _InscricaoState extends State<Inscricao> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text("Inscricao",
            style: TextStyle(
                fontSize: 25
            ),
          )
      ),
    );
  }
}
