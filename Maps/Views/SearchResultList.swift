//
//  SearchResultList.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SearchResultList: View {
    
    let places: [PlaceAnnotation]
    var onSelect: (PlaceAnnotation) -> Void
    
    @State private var locationManager = LocationManager()
    
    init(places: [PlaceAnnotation], onSelect: @escaping (PlaceAnnotation) -> Void) {
        self.places = places
        self.onSelect = onSelect
    }
    
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
            .contentShape(Rectangle())
            .onTapGesture {
                onSelect(place)
            }
        }
        
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList(places: []) { _ in
            
        }
    }
}
