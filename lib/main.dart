import 'package:flutter/material.dart';
import 'package:hisobcha/core/floor/app_database.dart';
import 'package:hisobcha/core/floor/entity/planning.dart';
import 'package:hisobcha/main_page/widgets/add_dialog.dart';
import 'package:local_auth/local_auth.dart';

import 'data_source/local_source.dart';
import 'main_page/widgets/item_row.dart';
import 'main_page/widgets/item_row_header.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final LocalAuthentication auth = LocalAuthentication();
  /*_SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
*/
  void _incrementCounter() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return AddDialog();
          });
    });
  }
/*
  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason: 'Let OS determine authentication method',
          useErrorDialogs: true,
          stickyAuth: true);
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    setState(
        () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason:
              'Scan your fingerprint (or face or whatever) to authenticate',
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  Future<void> _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }*/

  @override
  Widget build(BuildContext context) {
    final List<Planning> data = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        /*actions: [
          IconButton(
            onPressed: () {
              LocalSource.getInstance().removeAllPlanning();
            },
            icon: const Icon(Icons.delete_outline),
          )
        ],*/
      ),
      body: /*ListView(
        padding: const EdgeInsets.only(top: 30),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_supportState == _SupportState.unknown)
                const CircularProgressIndicator()
              else if (_supportState == _SupportState.supported)
                const Text('This device is supported')
              else
                const Text('This device is not supported'),
              const Divider(height: 100),
              Text('Can check biometrics: $_canCheckBiometrics\n'),
              ElevatedButton(
                child: const Text('Check biometrics'),
                onPressed: _checkBiometrics,
              ),
              const Divider(height: 100),
              Text('Available biometrics: $_availableBiometrics\n'),
              ElevatedButton(
                child: const Text('Get available biometrics'),
                onPressed: _getAvailableBiometrics,
              ),
              const Divider(height: 100),
              Text('Current State: $_authorized\n'),
              if (_isAuthenticating)
                ElevatedButton(
                  onPressed: _cancelAuthentication,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text('Cancel Authentication'),
                      Icon(Icons.cancel),
                    ],
                  ),
                )
              else
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Text('Authenticate'),
                          Icon(Icons.perm_device_information),
                        ],
                      ),
                      onPressed: _authenticate,
                    ),
                    ElevatedButton(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(_isAuthenticating
                              ? 'Cancel'
                              : 'Authenticate: biometrics only'),
                          const Icon(Icons.fingerprint),
                        ],
                      ),
                      onPressed: _authenticateWithBiometrics,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),*/
          InteractiveViewer(
        panEnabled: true, // Set it to false to prevent panning.
        minScale: 1,
        maxScale: 10,
        child: StreamBuilder<List<Planning>>(
            stream: LocalSource.getInstance().getAllPlanning(),
            builder: (context, snapshot) {
              data.clear();
              if (snapshot.hasData) {
                data.addAll(snapshot.data ?? []);
              }
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Table(
                      border: TableBorder.all(width: 0.2),
                      columnWidths: const {
                        0: FractionColumnWidth(0.05),
                        1: FractionColumnWidth(0.55),
                        2: FractionColumnWidth(0.1),
                        3: FractionColumnWidth(0.1),
                        4: FractionColumnWidth(0.1),
                        5: FractionColumnWidth(0.1),
                      },
                      children: [
                        const TableRow(
                          children: [
                            ItemTextHeader(value: ''),
                            ItemTextHeader(value: 'Name'),
                            ItemTextHeader(value: 'Price'),
                            ItemTextHeader(value: 'From date'),
                            ItemTextHeader(value: 'End date'),
                            ItemTextHeader(value: 'Status'),
                          ],
                        ),
                        for (var value in data)
                          TableRow(
                            children: [
                              ItemText(
                                value: value.id,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                              ItemText(
                                value: value.name,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                              ItemText(
                                value: value.price,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                              ItemText(
                                value: value.fromDate,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                              ItemText(
                                value: value.endDate,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                              ItemText(
                                value: value.status,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddDialog(value: value);
                                      });
                                },
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/*

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
*/
