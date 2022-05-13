//
//  SideBar.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SideBar: View {
    
    private var vm = SearchResultViewModel()
    @State private var search: String = ""
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            SearchResultList(places: appState.places) { place in
                appState.selectedPlace = place
                print(place)
            }
        }
        .searchable(text: $search, placement: .sidebar, prompt: "Search Maps")
        .onChange(of: search, perform: {value in
            vm.search(text: value) { places in
                appState.places = places
            }
        })
        .padding()
    }
    
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
