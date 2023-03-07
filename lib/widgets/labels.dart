import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels(
      {Key? key,
      required this.route,
      required this.actionLabel,
      required this.accountLabel})
      : super(key: key);

  final String route;
  final String actionLabel;
  final String accountLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(accountLabel,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, route),
          child: Text(
            actionLabel,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
