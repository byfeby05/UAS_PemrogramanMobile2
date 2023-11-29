import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late List<String> _filteredList;
  String _keywords = '';
  final List<String> _originList = [
    'Aditya Rizki Maulana 21552011299',
    'Abdullah Sidik 21552011215',
    'Ahmad Fujianto 20552011254',
    'Aldy Ardyansyah 21552011131',
    'Aliya Nurbani 21552011240',
    'Aprila Salsabila 20552011015',
    'Aprila Salsabila 20552011015',
    'Arifin Mulqa Maulana 21552011425',
    'Azki Maulana Assariy 21552011144',
    'Bayu Lukmanul Hakim 21552011268',
    'Dimas Anggara Saputra 21552011451',
    'Elgiana Liva 21552011326',
    'Feby Yanti 21552011332',
    'Fachri Febriansyah 21552011259',
    'Fauzan Fathurrasyid Kuswardani 21552011065',
    'Fauzan Nadhilah Sidqi 20552011086',
    'Fawaz Ridho Firdaus 21552011331',
    'Febriani 21552011244',
    'Fitri Andini 21552011237',
    'Harie Firdestian 21552011230',
    'Harry Priyoga 21552011340',
    'Hilman Mutaqin 21552011107',
    'Intan Aprilia 21552011218',
    'Irenius Bonan 21552011347',
    'Muhamad Fadilah Akbar 21552011364',
    'Melanda Putri Nabila 21552011181',
    'Mira Fadhila 21552011179',
    'Mochammad Fahrisah 21552011177',
    'Mochammad Radhi Ramadhan 21552011362',
    'Mochammad Radhi Ramadhan 21552011362',
    'Muhamad Fahmi Hasan 21552011365',
    'Muhamad Lutfi Pratama 20552011054',
    'Nadhira Adhya Azizah 21552011373',
    'Nissa Hadiddah 21552011297',
    'Puput Unggul Prayoga 21552011087',
    'Rahmat Subagja 20552011064',
    'Sabar Rianto Purba 21552011397',
    'Salsa Camelia Zahra 21552011135',
    'Sendy Pramudya 20552011031',
    'W Mangihut Parulian Sijabat 21552011129',
    'Yoramo Kurniawan Hia 21552011006',
  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _filteredList = [];
    _originList.sort();
    _searchController.addListener(() {
      debugPrint('search value : ${_searchController.text}');
      setState(() => _keywords = _searchController.text);
      _search();
    });
    super.initState();
  }

  void _search() {
    _filteredList.clear();
    for (int i = 0; i < _originList.length; i++) {
      String item = _originList[i];
      if (item.toLowerCase().contains(_keywords.toLowerCase())) {
        _filteredList.add(item);
      }
    }
  }

  Widget _buildList({required List<String> list}) => Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => SizedBox(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                list[index],
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
              const Divider(height: 2, color: Colors.blue),
          itemCount: list.length,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _searchController,
            decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 18)),
          ),
          _buildList(list: _keywords.isEmpty ? _originList : _filteredList)
        ],
      ),
    );
  }
}
