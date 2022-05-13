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
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        guard let annotation = view.annotation as? PlaceAnnotation else {
        return
        }
        
        view.canShowCallout = true
        view.detailCalloutAccessoryView = PlaceCalloutView(annotation: annotation, selectedShowDirection: { [weak self] place in
            
            let start = MKMapItem.forCurrentLocation()
            let destination = MKMapItem(placemark: MKPlacemark(coordinate: place.coordinate))
            
            self?.calculateRoute(start: start, destination: destination)
            
        })
        
        
    }
    
    func calculateRoute(start: MKMapItem, destination: MKMapItem) {
        
        let directionRequest = MKDirections.Request()
        directionRequest.transportType = .automobile
        directionRequest.source = start
        directionRequest.destination = destination
        
        
        let directions = MKDirections(request: directionRequest)
        directions.calculate { response, error in
            if let error = error {
                print("Unable to calculate directions \(error)")
            }
            
            
            guard let response = response,
                let route = response.routes.first else {
                    return
                }
            
            for step in route.steps {
           
            }
                
                
            
        }
    }
}
