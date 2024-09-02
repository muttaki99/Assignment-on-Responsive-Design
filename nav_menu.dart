import 'package:flutter/material.dart';

class NavMenuBar extends StatelessWidget {
  const NavMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.greenAccent,
              height: 150,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SKILL UP NOW",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 7,),
                    Text("TAP HERE",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
            const ListTile(
              leading: Icon(Icons.movie_creation_outlined),
              title: Text("Episode"),
            ),
            const ListTile(
              leading: Icon(Icons.message_sharp),
              title: Text("About"),
            )
          ],
        ),
      ),
    );
  }
}