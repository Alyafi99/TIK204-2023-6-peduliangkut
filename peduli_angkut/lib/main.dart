import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peduli_angkut/account_view.dart';
import 'package:peduli_angkut/cubit/auth_cubit.dart';
import 'package:peduli_angkut/home_page_view.dart';
import 'package:peduli_angkut/loginPage/sign_in_page.dart';
import 'package:peduli_angkut/loginPage/sign_up_page.dart';
import 'package:peduli_angkut/oder_page/confirmasi.dart';
import 'package:peduli_angkut/oder_page/oder_view.dart';
import 'package:peduli_angkut/oder_page/progress_pesanan.dart';
import 'package:peduli_angkut/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future<FirebaseApp> firebaseApp = Firebase?.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/signIn-page': (context) => SignInPage(),
          '/signUp-page': (context) => SignUpPage(),
          '/main': (context) => MyHomePage(),
          '/account': (context) => AccountPage(),
          '/order': (context) => OrderView(),
          '/konfirmasi': (context) => Konfimasi(),
          '/progress': (context) => Progress(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Dashboard()),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
