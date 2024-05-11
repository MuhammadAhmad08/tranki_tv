import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isCustomIcon = true;
  bool isCustomIcon2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          expansionTileListDecor(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Push Notification',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CupertinoSwitch(
                  value: isCustomIcon,
                  activeColor: const Color.fromARGB(255, 243, 242, 242),
                  thumbColor: const Color(0xFFCE1F4E),
                  onChanged: (v) {
                    setState(() {
                      isCustomIcon = v;
                    });
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          expansionTileListDecor(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Overlay  Notification',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CupertinoSwitch(
                  value: isCustomIcon2,
                  activeColor: const Color.fromARGB(255, 243, 242, 242),
                  thumbColor: const Color(0xFFCE1F4E),
                  onChanged: (v) {
                    setState(() {
                      isCustomIcon2 = v;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget expansionTileListDecor({Widget? child}) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFCE1F4E)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: child,
    );
  }
}
