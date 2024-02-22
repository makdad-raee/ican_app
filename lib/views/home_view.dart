import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ican_app/manger/cupit/ican_cubit.dart';
import 'package:ican_app/manger/cupit/ican_state.dart';

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
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.phone)),
            ),
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text('Home '),
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
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                    DropdownButton(
                      
                        alignment: AlignmentDirectional.center,
                        //padding: const EdgeInsets.all(12),
                        value: selectedValue,
                        items: items,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        });
                    setState(() {});
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
                      icon: Icon(FontAwesomeIcons.house), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.computer), label: 'computer'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.mobileScreenButton),
                      label: 'Users'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.textWidth),
                      label: 'decument'),
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
