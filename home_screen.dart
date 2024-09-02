import 'package:flutter/material.dart';
import 'package:untitled1/presentation/widgets/responsive_builder.dart';

import '../widgets/nav_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout()
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
    drawer: const NavMenuBar(),
        appBar: AppBar(
          title: const Text("HUMMING\nBIRD.",style: TextStyle(fontSize: 14),),
          centerTitle: true,
        ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("FLUTTER WEB.\nTHE BASICS",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Text("In this course we will go over the basics of using\nflutter web for development."
                    "Topics will include\nResponsive Layout,Deploying, Font Changes, Hover\nfunctionality, Modals and more."),
                const SizedBox(height: 55,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: (){},
                    child: const Text("Join course",style: TextStyle(color: Colors.white),))
              ],
            ),
      ),
        );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(56.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("HUMMING\nBIRD.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    Text("Episodes"),
                    SizedBox(width: 24,),
                    Text("About"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 200,),
            const Text("FLUTTER WEB.\nTHE BASICS",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900),),
            const SizedBox(height: 20,),
            const Text("In this course we will go over the basics of using\nflutter web for development."
                "Topics will include\nResponsive Layout,Deploying, Font Changes, Hover\nfunctionality, Modals and more."),
            const SizedBox(height: 50,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 14),
                  primary:Colors.green,
                ),
                onPressed: (){}, child: const Text("Join Course",style:
            TextStyle(fontSize: 16,color: Colors.white),))
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(56.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("HUMMING\nBIRD.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Text("Episodes"),
                      SizedBox(width: 24,),
                      Text("About"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 200,),
              const Text("FLUTTER WEB.\nTHE BASICS",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Text("In this course we will go over the basics of using\nflutter web for development."
                      "Topics will include\nResponsive Layout,Deploying, Font Changes, Hover\nfunctionality, Modals and more."),
                  const SizedBox(width: 350,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 16),
                        primary:Colors.green,
                      ),
                      onPressed: (){}, child: const Text("Join Course",style:
                  TextStyle(fontSize: 16,color: Colors.white),))
                ],
              ),
            ],
          ),
        )
    );
  }

}

