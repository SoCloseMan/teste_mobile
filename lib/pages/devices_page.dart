import 'package:flutter/material.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  bool isExpanded = false;

  List<String> area = ['Área 1', 'Área 2', 'Área 3'];
  List<String> setor = ['Setor 1', 'Setor 2', 'Setor 3'];
  List<String> conjunto = ['Conjunto 1', 'Conjunto 2', 'Conjunto 3'];
  List<String> equipamento = [
    'Equipamento 1',
    'Equipamento 2',
    'Equipamento 3'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 50, 99, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 50, 99, 1),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Hello',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Username',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: area.length,
                        itemBuilder: (context, i) => Theme(
                          data: Theme.of(context).copyWith(
                            dividerColor: Colors.transparent,
                          ),
                          child: ExpansionTile(
                            trailing: const SizedBox.shrink(),
                            title: Row(
                              children: [
                                const Icon(
                                  Icons.folder_open,
                                  color: Colors.black,
                                ),
                                Text(
                                  area[i],
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: setor.length,
                                  itemBuilder: (context, j) => ExpansionTile(
                                    trailing: const SizedBox.shrink(),
                                    title: Row(
                                      children: [
                                        const Icon(
                                          Icons.folder_open,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          setor[j],
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: conjunto.length,
                                          itemBuilder: (context, k) =>
                                              ExpansionTile(
                                            trailing: const SizedBox.shrink(),
                                            title: Row(
                                              children: [
                                                const Icon(
                                                  Icons.folder_open,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  conjunto[k],
                                                  style: const TextStyle(
                                                      fontSize: 14),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    TextEditingController
                                                        controller =
                                                        TextEditingController();
                                                    showModalBottomSheet(
                                                      context: context,
                                                      isScrollControlled: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Wrap(
                                                            children: <Widget>[
                                                              const Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Text(
                                                                      style: TextStyle(
                                                                          color: Color.fromRGBO(
                                                                              255,
                                                                              50,
                                                                              99,
                                                                              1),
                                                                          fontSize:
                                                                              26),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      'Edit Equipment Name'),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Column(
                                                                  children: [
                                                                    SizedBox(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.8,
                                                                      child:
                                                                          ListTile(
                                                                        leading:
                                                                            const Icon(
                                                                          Icons
                                                                              .edit,
                                                                          color: Color.fromRGBO(
                                                                              255,
                                                                              50,
                                                                              99,
                                                                              1),
                                                                        ),
                                                                        title:
                                                                            TextField(
                                                                          controller:
                                                                              controller,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.8,
                                                                      child:
                                                                          FilledButton(
                                                                        style:
                                                                            ButtonStyle(
                                                                          backgroundColor: MaterialStateProperty.all<Color>(const Color
                                                                              .fromRGBO(
                                                                              255,
                                                                              50,
                                                                              99,
                                                                              1)),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Confirm'),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.8,
                                                                      child:
                                                                          FilledButton(
                                                                        style:
                                                                            ButtonStyle(
                                                                          backgroundColor:
                                                                              MaterialStateProperty.all<Color>(
                                                                            const Color.fromRGBO(
                                                                                217,
                                                                                217,
                                                                                217,
                                                                                1),
                                                                          ),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            conjunto[k] =
                                                                                controller.text;
                                                                          });
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            const Center(
                                                                          child:
                                                                              Text(
                                                                            'Cancel',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color.fromRGBO(255, 50, 99, 1),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  icon: const Icon(
                                                    Icons.edit,
                                                    color: Color.fromRGBO(
                                                        255, 50, 99, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30.0),
                                                child: ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: equipamento.length,
                                                  itemBuilder: (context, l) =>
                                                      ListTile(
                                                    title: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.sensors,
                                                          color: Colors.black,
                                                        ),
                                                        Text(
                                                          equipamento[l],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
