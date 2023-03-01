import 'package:app/controllers/search.dart';
import 'package:app/tools/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unicons/unicons.dart';

AppBar omniAppBar(bool search, WidgetRef ref, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return AppBar(
    toolbarHeight: 80,
    actions: [
      if (!search && size.width < 720)
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search',
          onPressed: () {
            onSearch(ref);
          },
        ),
      if (!search)
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: IconButton(
            icon: const Icon(Icons.menu_outlined),
            tooltip: 'Menu',
            onPressed: () {
              scaffoldkey.currentState!.openEndDrawer();
            },
          ),
        ),
      Container()
    ],
    title: search
        ? Center(
            child: SizedBox(
              //width: 500,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.fullscreen_exit),
                    onPressed: () {
                      onSearch(ref);
                    },
                  ),
                  prefixIcon: const Icon(UniconsLine.search_alt),
                ),
              ),
            ),
          )
        : Row(
            children: [
              const Expanded(
                flex: 2,
                child: Text(
                  'Albourane Admin',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              //if (size.width > 720) const Spacer(),
              if (1080 > size.width && size.width > 720)
                Expanded(
                  flex: 4,
                  child: Center(
                    child: SizedBox(
                      width: 500,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'Search',
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.fullscreen),
                            onPressed: () {
                              onSearch(ref);
                            },
                          ),
                          prefixIcon: const Icon(UniconsLine.search_alt),
                        ),
                      ),
                    ),
                  ),
                ),
              if (size.width > 1080)
                Center(
                  child: SizedBox(
                    width: 500,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        labelText: 'Search',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.fullscreen),
                          onPressed: () {
                            onSearch(ref);
                          },
                        ),
                        prefixIcon: const Icon(UniconsLine.search_alt),
                      ),
                    ),
                  ),
                ),
              if (size.width > 1080) const Spacer()
            ],
          ),
  );
}
