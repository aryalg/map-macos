//
//  MapViewCoordinator.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import Foundation
import MapKit


final class MapViewCoordinator: NSObject, MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        // Fires when new location is available
        
        
        let region = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
        
        mapView.setRegion(region, animated: true)
    }
}
