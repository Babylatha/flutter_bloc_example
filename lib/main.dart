import 'package:cubit_increment/bloc_page.dart';
import 'package:cubit_increment/counter_bloc.dart';
import 'package:cubit_increment/counter_cubit.dart';
import 'package:cubit_increment/cubit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("cubit and bloc"),
          ),
          body: Builder(builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CounterBlocPage()));
                      },
                      child: const Text("Bloc Page")),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CounterCubitPage()));
                      },
                      child: const Text("cubit Page")),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}




// import 'package:bloc_example/bloc/text_controller_bloc.dart';
// import 'package:bloc_example/presentation/first_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//      BlocProvider(
//       create: (context) => TextControllerBloc(),
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: FirstPage(),
//       ),
//     );
//   }
// }
