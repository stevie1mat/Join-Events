import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(28.644800, 77.216721);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{
    MarkerId('marker_id_1'): Marker(
      markerId: MarkerId('marker_id_1'),
      position: LatLng(28.644800, 77.216721),
      infoWindow: InfoWindow(title: 'marker_id_1', snippet: '*'),
      onTap: () {
        //_onMarkerTapped(markerId);
        print('Marker Tapped');
      },
      onDragEnd: (LatLng position) {
        print('Drag Ended');
      },
    )
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            mapType: MapType.normal,
            markers: Set<Marker>.of(markers.values),
            //onMapCreated: (GoogleMapController controller) {
            //  _controller.complete(controller);
            //},
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 35),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[400],
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.orange.shade200,
                        blurRadius: 4.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: const Offset(
                          0.0, // Move to right 10  horizontally
                          0.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0, left: 18, bottom: 13, right: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
