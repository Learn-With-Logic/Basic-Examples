import 'package:flutter/material.dart';

class HomeScreen_Alertdialog extends StatefulWidget {
  @override
  State<HomeScreen_Alertdialog> createState() => _HomeScreen_AlertdialogState();
}

class _HomeScreen_AlertdialogState extends State<HomeScreen_Alertdialog> {
  String name = '';
  TextEditingController? txtname;

  get errortext {
    if (txtname!.value.text == null || txtname!.value.text.isEmpty)
      return 'Type Something';
    else
      null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    txtname = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My Name is ' + name),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () async {
                  final result = await openDialog();

                  if (result == null || result.isEmpty) {
                    print("Empty found");
                    return;
                  }

                  setState(() {
                    this.name = result;
                  });
                },
                child: Text("Get Name")),
          ],
        ),
      ),
    );
  }

  Future<String?> openDialog() async {
    return showDialog<String>(
        context: context,
        builder: (context) => StatefulBuilder(
            builder: (context, setState) => AlertDialog(
                  title: Text('Enter Your name here'),
                  content: TextField(
                    controller: txtname,
                    onTap: () {},
                    onSubmitted: (_) {
                      submit();
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Name',
                      errorText: errortext,
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          submit();
                        },
                        child: Text('Submit')),
                  ],
                )));
  }

  void submit() {
    if (txtname!.value.text == null || txtname!.value.text.isEmpty) return;
    Navigator.of(context).pop(txtname!.text);
    txtname!.clear();
  }
}
