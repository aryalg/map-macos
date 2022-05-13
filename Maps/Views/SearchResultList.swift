//
//  SearchResultList.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SearchResultList: View {
    
    let places: [PlaceAnnotation]
    
    @State private var locationManager = LocationManager()
    
    
    func formatDistance(for place: PlaceAnnotation) -> String {
        let distanceInMeter = place.getDistance(userLocation: locationManager.location)
        
        
        return distanceInMeter != nil ? "\(String(describing: distanceInMeter!))" : ""
    }
    
    
    
    
    
    
    var body: some View {
        List(places) {
            place in
            VStack(alignment: .leading) {
                Text(place.title ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(formatDistance(for: place))
                    .font(.caption)
                    .opacity(0.4)
            }
        }
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList(places: [])
    }
}
