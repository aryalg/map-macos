//
//  MapView.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: NSViewRepresentable {
    typealias NSViewType = MKMapView
    
    private var annotations: [PlaceAnnotation] = []
    private var selectedPlace: PlaceAnnotation?
    
    init(annotations: [PlaceAnnotation], selectedPlace: PlaceAnnotation?) {
        self.annotations = annotations
        self.selectedPlace = selectedPlace
    }
    
    func makeNSView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    
    func updateNSView(_ map: MKMapView, context: Context) {
        // Remove all annotations
        map.removeAnnotations(map.annotations)
        
        // Add Annotations
        map.addAnnotations( annotations)
        
        if let selectedPlace = selectedPlace {
            map.selectAnnotation(selectedPlace, animated: true)
        }
    }
    
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
    }
}
