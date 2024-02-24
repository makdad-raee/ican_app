import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ican_app/manger/cupit/ican_cubit.dart';
import 'package:ican_app/manger/cupit/ican_state.dart';
import 'package:ican_app/views/company_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = 'item1';
    final List<DropdownMenuItem<String>> items = [
      const DropdownMenuItem(
        value: 'item1',
        child: Icon(Icons.home),
      ),
      const DropdownMenuItem(
        value: 'item2',
        child: Icon(Icons.settings),
      ),
      const DropdownMenuItem(
        value: 'item3',
        child: Icon(Icons.settings),
      ),
    ];

    return BlocProvider<IcanCubit>(
      create: (context) => IcanCubit(),
      child: BlocConsumer<IcanCubit, IcanState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = IcanCubit.get(context);
          return Scaffold(
            floatingActionButton: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.yellow[700],
              child: IconButton(
                  tooltip: 'Call Us',
                  onPressed: () async {},
                  icon: const Icon(FontAwesomeIcons.phone)),
            ),
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(cubit.apparTitles[cubit.currentIndex]),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  'assets/images/ican after edit.jpg',
                  //  scale:1,
                ),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              actions: [
                IconButton(
                  icon: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 253, 216, 40),
                    radius: 24,
                    child: Icon(
                      FontAwesomeIcons.userGroup,
                      size: 18,
                    ),
                  ),
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CompanyView(),));
                  },
                )
              ],
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (value) {
                  cubit.changeBottomNav(value);
                },
                backgroundColor: Colors.black,
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.black.withOpacity(0.8),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.code), label: 'Application'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.photoFilm),
                      label: 'Montague'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.cameraRetro),
                      label: 'Design'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.bullhorn),
                      label: 'Marketing'),
                  // BottomNavigationBarItem(
                  //     icon: Icon(FontAwesomeIcons.phone), label: 'contact'),
                ],
              ),
            ),
            body: cubit.screensNave[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
