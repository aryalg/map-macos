//
//  SearchResults.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import Foundation
import MapKit


class SearchResultViewModel {
    
    private var locationManager = LocationManager()
    
    
    
    func search(text: String, completion: @escaping () -> Void) {
        
        if text.count < 4 {
            return
        }
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = text
        searchRequest.region = locationManager.region
        
        
        let search = MKLocalSearch(request: searchRequest)
        search.start { response, error in
            guard let response = response, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            print("MapsV1: \(response.mapItems)" )
        }
        
    }
}
