import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  // late GoogleMapController mapController;
  // Set<Marker> markers = {};
  //
  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  //   setState(() {
  //     markers.add(Marker(
  //       markerId: MarkerId('marker1'),
  //       position: LatLng(37.7749, -122.4194),
  //       infoWindow: InfoWindow(title: 'San Francisco'),
  //     ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyMap'),
        actions: [Icon(Icons.info_outline),],
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GoogleMap(
        // mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          // target: LatLng(37.7749, -122.4194),
          target: LatLng(13.8192006, 100.5143080),
          zoom: 16,
        ),
        // onMapCreated: _onMapCreated,
      ),
    );
  }
}
