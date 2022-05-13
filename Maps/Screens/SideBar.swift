//
//  SideBar.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SideBar: View {
    @State private var search: String = ""
    
    var body: some View {
        VStack {
            SearchResultList()
        }
        .searchable(text: $search, placement: .sidebar, prompt: "Search Maps")
        .onChange(of: search, perform: {value in
            print(value)
        })
        .padding()
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
