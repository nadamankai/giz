import 'package:flutter/material.dart';
import 'package:iac_project/Widgets/parts.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);
  @override
  State<Feed> createState() => _Feed();
}

class _Feed extends State<Feed> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Navigator.canPop(context),
      child: Scaffold(
        key: _key,
        bottomNavigationBar: const BotBar(i: 0),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffbd2005),
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          child: const Icon(
            Icons.shopping_cart_rounded,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          actions: [
            IconButton(
              color: Colors.blueGrey,
              onPressed: () {
                _key.currentState!.openEndDrawer();
              },
              icon: const Icon(
                Icons.wrap_text_rounded,
                color: Color(0xffbd2005),
              ),
            ),
          ],
          leading: IconButton(
            color: Colors.blueGrey,
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Color(0xffbd2005),
            ),
          ),
        ),
        body: const CustomScrollView(slivers: [
          SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            toolbarHeight: 0,
            expandedHeight: 80,
            collapsedHeight: 0,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: SearchButton(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 35.0),
              child: SingleChildScrollView(
                child: null
                ),
              ),
            ),
          ],
    )
    )
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 32, top: 6, left: 32, bottom: 13),
        child: OutlinedButton(
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              fixedSize: MaterialStateProperty.all(const Size(300, 65)),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.blueGrey,
                  width: 5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ))),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Search",
              style: TextStyle(color: Colors.blueGrey, fontSize: 14),
            ),
          ),
        ));
  }
}
