//
//  SearchResultList.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SearchResultList: View {
    
    let places: [PlaceAnnotation]
    
    
    
    
    
    
    var body: some View {
        List(places) {
            place in
            Text(place.title ?? "")
        }
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList(places: [])
    }
}
