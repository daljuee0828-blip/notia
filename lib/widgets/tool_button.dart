import 'package:flutter/material.dart';

class ToolButton extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback? onTap;


  const ToolButton({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.only(bottom: 15),

      child: ListTile(

        onTap: onTap,

        leading: Icon(icon),

        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),

      ),
    );
  }
}