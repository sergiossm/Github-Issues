import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.black12,
              hintText: 'Search',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        preferredSize: Size(double.infinity, 64),
      ),
      centerTitle: true,
      title: Text(
        'Issues',
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(MdiIcons.sort, color: Colors.black54), onPressed: () {}),
        IconButton(
            icon: Icon(MdiIcons.filter, color: Colors.black54),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 64);
}
