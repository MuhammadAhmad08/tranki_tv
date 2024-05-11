import 'package:flutter/material.dart';
import 'package:tranki_tv/constants/app_colors.dart';
import 'package:tranki_tv/extensions/extensions.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  bool isCustomIcon = false;
  bool isCustomIcon2 = false;
  bool isCustomIcon3 = false;
  bool isCustomIcon4 = false;
  bool isCustomIcon5 = false;
  bool isCustomIcon6 = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      children: [
        playlist(),
        const SizedBox(height: 10),
        memberships(),
        const SizedBox(height: 10),
        players(),
        const SizedBox(height: 10),
        parentsControl(),
        const SizedBox(height: 10),
        downloads(),
        const SizedBox(height: 10),
        misc(),
      ],
    );
  }

  Container misc() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
        backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon6
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon6 ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon6 = value;
          });
        },
        title: Text(
          'Misc',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon6 ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Autoboot on Startup')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: false),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Show the Complete Guide')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Auto Clear Cache')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container downloads() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
        backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon5
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon5 ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon5 = value;
          });
        },
        title: Text(
          'Downloads',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon5 ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Automatically Download Content')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                const Text.rich(
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Location: ',
                        style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '0/Downloads/TrankiTV',
                        style: TextStyle(
                          color: Color(0xFFCE1F4E),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ).expanded()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container parentsControl() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
       backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon4
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon4 ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon4 = value;
          });
        },
        title: Text(
          'Parental Control',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon4 ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Restrict Explicit Content')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Recently added limit'),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 68,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFCE1F4E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      '30',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container players() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
        backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon3
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon3 ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon3 = value;
          });
        },
        title: Text(
          'Player',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon3 ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Active Subtitle')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(value: true),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Automatic Playback ')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Live autoplay channel')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                checkBox(),
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Show EPG in channel list')
              ],
            ),
          ),
          expansionTileListDecor(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                checkboxText(text: 'Show EPG in channel list'),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 68,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFCE1F4E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      '30',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget checkboxText({String? text}) {
    return Text(
      text ?? 'Unlimited Free',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Color(0xFF121212),
        fontSize: 12,
        
        fontWeight: FontWeight.w400,
      ),
    ).expanded();
  }

  SizedBox checkBox({bool? value}) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: Checkbox(
        value: value ?? false,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        activeColor: const Color(0xFFCE1F4E),
        onChanged: (bool? newValue) {},
        side: MaterialStateBorderSide.resolveWith(
          (states) => const BorderSide(
            color: Color(0xFFCE1F4E),
            width: 1.5,
          ),
        ),
      ),
    );
  }

  Container memberships() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
       backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon2
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon2 ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon2 = value;
          });
        },
        title: Text(
          'Membership',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon2 ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: const Row(
              children: [
                Text(
                  'Membership',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Unlimited Free',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container playlist() {
    return Container(
      decoration: listDecoration(),
      child: ExpansionTile(
        collapsedShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        initiallyExpanded: false,
        backgroundColor:  AppColors.kPrimary,
        trailing: Icon(
          isCustomIcon
              ? Icons.keyboard_double_arrow_down
              : Icons.keyboard_double_arrow_up,
          color: isCustomIcon ? Colors.white : Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            isCustomIcon = value;
          });
        },
        title: Text(
          'Playlist',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isCustomIcon ? Colors.white : Colors.black,
          ),
        ),
        children: [
          expansionTileListDecor(
            child: const Row(
              children: [
                Text(
                  'PlayList',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget expansionTileListDecor({Widget? child}) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 45,
      child: child,
    );
  }

  ShapeDecoration listDecoration() {
    return ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 15,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    );
  }
}
