//
//  AppState.swift
//  Maps
//
//  Created by Bikram Aryal on 14/05/2022.
//

import Foundation


class AppState: ObservableObject {
    @Published var places: [PlaceAnnotation] = []
    @Published var selectedPlace: PlaceAnnotation?
    
}
