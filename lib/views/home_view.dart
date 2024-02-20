import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ican_app/manger/cupit/ican_cubit.dart';
import 'package:ican_app/manger/cupit/ican_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IcanCubit>(
      create: (context) => IcanCubit(),
      child: BlocConsumer<IcanCubit, IcanState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = IcanCubit.get(context);
          return Scaffold(
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (value) {
                  cubit.changeBottomNav(value);
                },
                backgroundColor: Colors.black,
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.blueGrey,
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
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.phone), label: 'contact'),
                ],
              ),
            ),
            body:cubit.screensNave[cubit.currentIndex],
          );
        },
      ),
    );
  }
}