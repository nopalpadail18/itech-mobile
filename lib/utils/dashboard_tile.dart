import 'package:flutter/material.dart';
import 'package:itech/screens/naviation_screen.dart';

class DashboardTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  // final IconButton iconButton;
  // final Widget Function() route;
  final Function() onTap;
  const DashboardTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: ListTile(
          leading: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 56, 56, 157),
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              )),
          title: Text(title),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
          ),
          trailing: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => onTap()));
            },
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
