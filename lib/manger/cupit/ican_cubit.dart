import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ican_app/manger/cupit/ican_state.dart';
import 'package:ican_app/views/widgets/adv_section.dart';
import 'package:ican_app/views/widgets/design_section.dart';
import 'package:ican_app/views/widgets/montague.dart';
import 'package:ican_app/views/widgets/programing_section.dart';
import 'package:ican_app/views/widgets/repairing_section.dart';

class IcanCubit extends Cubit<IcanState> {
  IcanCubit() : super(IcanInitState());

  static IcanCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;
  List<Widget> screensNave = const [
    ProgramingSection(),
    MontagueSection(),
    DesignSection(),
    AdvertisingSection(),
    RepairingSection()
  ];
   List <String> apparTitles=[
    'Programing',
    'Monatgue',
    'Graphic Design & logos',
    'Marketing',
    'Reparing'
   ];
  List<String> titlels = const [];
  void changeBottomNav(index) {
    currentIndex = index;
    emit(IcanChangeBottomNavState());
  }
 
}
