import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/services/currency_service.dart';
import 'package:flutter_example/services/service_locator.dart';

class CurrencyListScreen extends StatefulWidget {
  const CurrencyListScreen({Key? key}) : super(key: key);

  @override
  State<CurrencyListScreen> createState() => _CurrencyListScreenState();
}

class _CurrencyListScreenState extends State<CurrencyListScreen> {
  final _currencyService = ServiceLocator.shared.currencyService;
  List<Currency> _items = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getAllExchanges();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Currency List"),
        trailing: GestureDetector(
          onTap: () { _getAllExchanges(); },
          child: const Icon(CupertinoIcons.refresh, color: CupertinoColors.systemBlue),
        ),
      ),
      child: _isLoading ? loadingScreen() : listWidget()
    );
  }

  Widget loadingScreen() {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const CupertinoActivityIndicator(animating: true),
    );
  }

  Widget listWidget() {
     return CupertinoScrollbar(
       child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, i) {
              final exchangeId = _items[i].exchangeId;
              final name = _items[i].name;
              return CurrencyCell(
                id: exchangeId, 
                name: name,
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    fullscreenDialog: false,
                    builder: (context) => CurrencyScreen(id: exchangeId, name: name))
                  );
                },
              );
       }),
     );
  }

  _getAllExchanges() async {
    setState(() {
      _isLoading = true;
    });

    final items = await _currencyService.getAllExchanges();

    setState(() {
      _items = items;
      _isLoading = false;
    });
  }
}

class CurrencyCell extends StatelessWidget {
  final String id;
  final String name;
  final VoidCallback? onTap;

  const CurrencyCell({
    Key? key, 
    required this.id, 
    required this.name, 
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.blue.withOpacity(0.1),
          highlightColor: Colors.blue.withOpacity(0.1),
          onTap: () { onTap?.call(); },
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [const Text("Name: "), Text(name, style: const TextStyle(color: Colors.red))]),
                      const SizedBox(width: 8.0),
                      Row(children: [const Text("Id: "), Text(id, style: const TextStyle(color: Colors.grey))]),
                  ]),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrencyScreen extends StatelessWidget {
  final String id;
  final String name;
  
  const CurrencyScreen({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency"),
      ),
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(id)
        ])
      )
    );
  }
}
