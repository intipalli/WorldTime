import 'package:flutter/material.dart';
import 'package:world_time/services/america_time.dart';

class ChooseLocationScreen extends StatefulWidget {
  @override
  _ChooseLocationScreenState createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  List<AmericaTime> locations = [
  AmericaTime(url: 'America/Adak', location: 'Adak'),
  AmericaTime(url: 'America/Anchorage', location: 'Anchorage'),
  AmericaTime(url: 'America/Araguaina', location: 'Araguaina'),
  AmericaTime(url: 'America/Argentina/Buenos_Aires', location: 'Argentina/Buenos Aires'),
  AmericaTime(url: 'America/Argentina/Catamarca', location: 'Argentina/Catamarca'),
  AmericaTime(url: 'America/Argentina/Cordoba', location: 'Argentina/Cordoba'),
  AmericaTime(url: 'America/Argentina/Jujuy', location: 'Argentina/Jujuy'),
  AmericaTime(url: 'America/Argentina/La_Rioja', location: 'Argentina/La Rioja'),
  AmericaTime(url: 'America/Argentina/Mendoza', location: 'Argentina/Mendoza'),
  AmericaTime(url: 'America/Argentina/Rio_Gallegos', location: 'Argentina/Rio Gallegos'),
  AmericaTime(url: 'America/Argentina/Salta', location: 'Argentina/Salta'),
  AmericaTime(url: 'America/Argentina/San_Juan', location: 'Argentina/San Juan'),
  AmericaTime(url: 'America/Argentina/San_Luis', location: 'Argentina/San Luis'),
  AmericaTime(url: 'America/Argentina/Tucuman', location: 'Argentina/Tucuman'),
  AmericaTime(url: 'America/Argentina/Ushuaia', location: 'Argentina/Ushuaia'),
  AmericaTime(url: 'America/Asuncion', location: 'Asuncion'),
  AmericaTime(url: 'America/Bahia', location: 'Bahia'),
  AmericaTime(url: 'America/Bahia_Banderas', location: 'Bahia Banderas'),
  AmericaTime(url: 'America/Barbados', location: 'Barbados'),
  AmericaTime(url: 'America/Belem', location: 'Belem'),
  AmericaTime(url: 'America/Belize', location: 'Belize'),
  AmericaTime(url: 'America/Boa_Vista', location: 'Boa Vista'),
  AmericaTime(url: 'America/Bogota', location: 'Bogota'),
  AmericaTime(url: 'America/Boise', location: 'Boise'),
  AmericaTime(url: 'America/Cambridge_Bay', location: 'Cambridge Bay'),
  AmericaTime(url: 'America/Campo_Grande', location: 'Campo Grande'),
  AmericaTime(url: 'America/Cancun', location: 'Cancun'),
  AmericaTime(url: 'America/Caracas', location: 'Caracas'),
  AmericaTime(url: 'America/Cayenne', location: 'Cayenne'),
  AmericaTime(url: 'America/Chicago', location: 'Chicago'),
  AmericaTime(url: 'America/Chihuahua', location: 'Chihuahua'),
  AmericaTime(url: 'America/Ciudad_Juarez', location: 'Ciudad Juarez'),
  AmericaTime(url: 'America/Costa_Rica', location: 'Costa Rica'),
  AmericaTime(url: 'America/Cuiaba', location: 'Cuiaba'),
  AmericaTime(url: 'America/Danmarkshavn', location: 'Danmarkshavn'),
  AmericaTime(url: 'America/Dawson', location: 'Dawson'),
  AmericaTime(url: 'America/Dawson_Creek', location: 'Dawson Creek'),
  AmericaTime(url: 'America/Denver', location: 'Denver'),
  AmericaTime(url: 'America/Detroit', location: 'Detroit'),
  AmericaTime(url: 'America/Edmonton', location: 'Edmonton'),
  AmericaTime(url: 'America/Eirunepe', location: 'Eirunepe'),
  AmericaTime(url: 'America/El_Salvador', location: 'El Salvador'),
  AmericaTime(url: 'America/Fort_Nelson', location: 'Fort Nelson'),
  AmericaTime(url: 'America/Fortaleza', location: 'Fortaleza'),
  AmericaTime(url: 'America/Glace_Bay', location: 'Glace Bay'),
  AmericaTime(url: 'America/Goose_Bay', location: 'Goose Bay'),
  AmericaTime(url: 'America/Grand_Turk', location: 'Grand Turk'),
  AmericaTime(url: 'America/Guatemala', location: 'Guatemala'),
  AmericaTime(url: 'America/Guayaquil', location: 'Guayaquil'),
  AmericaTime(url: 'America/Guyana', location: 'Guyana'),
  AmericaTime(url: 'America/Halifax', location: 'Halifax'),
  AmericaTime(url: 'America/Havana', location: 'Havana'),
  AmericaTime(url: 'America/Hermosillo', location: 'Hermosillo'),
  AmericaTime(url: 'America/Indiana/Indianapolis', location: 'Indiana/Indianapolis'),
  AmericaTime(url: 'America/Indiana/Knox', location: 'Indiana/Knox'),
  AmericaTime(url: 'America/Indiana/Marengo', location: 'Indiana/Marengo'),
  AmericaTime(url: 'America/Indiana/Petersburg', location: 'Indiana/Petersburg'),
  AmericaTime(url: 'America/Indiana/Tell_City', location: 'Indiana/Tell City'),
  AmericaTime(url: 'America/Indiana/Vevay', location: 'Indiana/Vevay'),
  AmericaTime(url: 'America/Indiana/Vincennes', location: 'Indiana/Vincennes'),
  AmericaTime(url: 'America/Indiana/Winamac', location: 'Indiana/Winamac'),
  AmericaTime(url: 'America/Inuvik', location: 'Inuvik'),
  AmericaTime(url: 'America/Iqaluit', location: 'Iqaluit'),
  AmericaTime(url: 'America/Jamaica', location: 'Jamaica'),
  AmericaTime(url: 'America/Juneau', location: 'Juneau'),
  AmericaTime(url: 'America/Kentucky/Louisville', location: 'Kentucky/Louisville'),
  AmericaTime(url: 'America/Kentucky/Monticello', location: 'Kentucky/Monticello'),
  AmericaTime(url: 'America/La_Paz', location: 'La Paz'),
  AmericaTime(url: 'America/Lima', location: 'Lima'),
  AmericaTime(url: 'America/Los_Angeles', location: 'Los Angeles'),
  AmericaTime(url: 'America/Maceio', location: 'Maceio'),
  AmericaTime(url: 'America/Managua', location: 'Managua'),
  AmericaTime(url: 'America/Manaus', location: 'Manaus'),
  AmericaTime(url: 'America/Martinique', location: 'Martinique'),
  AmericaTime(url: 'America/Matamoros', location: 'Matamoros'),
  AmericaTime(url: 'America/Mazatlan', location: 'Mazatlan'),
  AmericaTime(url: 'America/Menominee', location: 'Menominee'),
    AmericaTime(url: 'America/Merida', location: 'Merida'),
    AmericaTime(url: 'America/Metlakatla', location: 'Metlakatla'),
    AmericaTime(url: 'America/Mexico_City', location: 'Mexico City'),
    AmericaTime(url: 'America/Miquelon', location: 'Miquelon'),
    AmericaTime(url: 'America/Moncton', location: 'Moncton'),
    AmericaTime(url: 'America/Monterrey', location: 'Monterrey'),
    AmericaTime(url: 'America/Montevideo', location: 'Montevideo'),
    AmericaTime(url: 'America/New_York', location: 'New York'),
    AmericaTime(url: 'America/Nome', location: 'Nome'),
    AmericaTime(url: 'America/Noronha', location: 'Noronha'),
    AmericaTime(url: 'America/North_Dakota/Beulah', location: 'North Dakota/Beulah'),
    AmericaTime(url: 'America/North_Dakota/Center', location: 'North Dakota/Center'),
    AmericaTime(url: 'America/North_Dakota/New_Salem', location: 'North Dakota/New Salem'),
    AmericaTime(url: 'America/Nuuk', location: 'Nuuk'),
    AmericaTime(url: 'America/Ojinaga', location: 'Ojinaga'),
    AmericaTime(url: 'America/Panama', location: 'Panama'),
    AmericaTime(url: 'America/Paramaribo', location: 'Paramaribo'),
    AmericaTime(url: 'America/Phoenix', location: 'Phoenix'),
    AmericaTime(url: 'America/Port-au-Prince', location: 'Port-au-Prince'),
    AmericaTime(url: 'America/Porto_Velho', location: 'Porto Velho'),
    AmericaTime(url: 'America/Puerto_Rico', location: 'Puerto Rico'),
    AmericaTime(url: 'America/Punta_Arenas', location: 'Punta Arenas'),
    AmericaTime(url: 'America/Rankin_Inlet', location: 'Rankin Inlet'),
    AmericaTime(url: 'America/Recife', location: 'Recife'),
    AmericaTime(url: 'America/Regina', location: 'Regina'),
    AmericaTime(url: 'America/Resolute', location: 'Resolute'),
    AmericaTime(url: 'America/Rio_Branco', location: 'Rio Branco'),
    AmericaTime(url: 'America/Santarem', location: 'Santarem'),
    AmericaTime(url: 'America/Santiago', location: 'Santiago'),
    AmericaTime(url: 'America/Santo_Domingo', location: 'Santo Domingo'),
    AmericaTime(url: 'America/Sao_Paulo', location: 'Sao Paulo'),
    AmericaTime(url: 'America/Scoresbysund', location: 'Scoresbysund'),
    AmericaTime(url: 'America/Sitka', location: 'Sitka'),
    AmericaTime(url: 'America/St_Johns', location: 'St. Johns'),
    AmericaTime(url: 'America/Swift_Current', location: 'Swift Current'),
    AmericaTime(url: 'America/Tegucigalpa', location: 'Tegucigalpa'),
    AmericaTime(url: 'America/Thule', location: 'Thule'),
    AmericaTime(url: 'America/Tijuana', location: 'Tijuana'),
    AmericaTime(url: 'America/Toronto', location: 'Toronto'),
    AmericaTime(url: 'America/Vancouver', location: 'Vancouver'),
    AmericaTime(url: 'America/Whitehorse', location: 'Whitehorse'),
    AmericaTime(url: 'America/Winnipeg', location: 'Winnipeg'),
    AmericaTime(url: 'America/Yakutat', location: 'Yakutat'),
  ];


  List<AmericaTime> filteredLocations = [];
  TextEditingController searchController = TextEditingController();

  void updateTime(index) async {
    String locationName = filteredLocations[index].location;
    AmericaTime instance = locations.firstWhere((location) => location.location == locationName);
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    searchController.addListener(filterLocations);
  }

  void filterLocations() {
    Set<String> uniqueLocations = {};
    List<AmericaTime> _filteredLocations = [];
    String searchTerm = searchController.text.toLowerCase();

    // Filter and add unique locations to the filtered list
    locations.forEach((location) {
      String locationName = location.location.toLowerCase();
      if (locationName.contains(searchTerm) && !uniqueLocations.contains(locationName)) {
        _filteredLocations.add(location);
        uniqueLocations.add(locationName);
      }
    });

    setState(() {
      filteredLocations = _filteredLocations;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Choose a Location',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search location',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredLocations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        updateTime(index);
                      },
                      title: Text(filteredLocations[index].location),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/us.png'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
