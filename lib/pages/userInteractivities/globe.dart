import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Globe extends StatefulWidget {
  const Globe({super.key});

  @override
  State<Globe> createState() => _GlobeState();
}

class _GlobeState extends State<Globe> {

  late GoogleMapController mapController;
   
   final LatLng _center = const LatLng(-33.86, 151.20);
   
   void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: BoxDecoration(
            ),
            child:  GoogleMap(
              zoomControlsEnabled: false,
              zoomGesturesEnabled: true,
              tiltGesturesEnabled: true,
              fortyFiveDegreeImageryEnabled: true,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ), // CameraPosition
        ), // Google
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Text('Phonebook', 
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
          )
        ],
      )
    );
  }
}