import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/views/settings/widgets/icon_listtile.dart';
import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(55),
              topRight: Radius.circular(55),
            ),
          ),
          backgroundColor: white,
          leading: ImageIcon(
            AssetImage('assets/images/icons/remove.png'),
            color: Color(0xff000E08),
          ),
          title: Text(
            'Share Content',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff000E08),
                fontWeight: FontWeight.w600,
                fontFamily: 'caros'),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: white,
            child: Column(
              children: [
                IconListTile(
                    title: 'Camera',
                    icon: 'assets/images/icons/camera.png',
                    issubtitle: false,
                    onTap: () {}),
                IconListTile(
                  title: 'Documents',
                  icon: 'assets/images/icons/doc.png',
                  issubtitle: true,
                  onTap: () {},
                  subtitle: 'Share your files',
                ),
                IconListTile(
                  title: 'Create a poll',
                  icon: 'assets/images/icons/chart.png',
                  issubtitle: true,
                  onTap: () {},
                  subtitle: 'Create a poll for any querry',
                ),
                IconListTile(
                  title: 'Media',
                  icon: 'assets/images/icons/media.png',
                  issubtitle: true,
                  onTap: () {},
                  subtitle: 'Share your photos and videos',
                ),
                IconListTile(
                  title: 'Contact',
                  icon: 'assets/images/icons/user.png',
                  issubtitle: true,
                  onTap: () {},
                  subtitle: 'Share your contacts',
                ),
                IconListTile(
                  title: 'Location',
                  icon: 'assets/images/icons/location.png',
                  issubtitle: true,
                  onTap: () {},
                  subtitle: 'Share your location',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
