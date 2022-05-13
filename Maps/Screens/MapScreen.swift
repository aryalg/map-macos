//
//  MapScreen.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct MapScreen: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        MapView(annotations : appState.places, selectedPlace: appState.selectedPlace)
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
