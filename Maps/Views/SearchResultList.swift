//
//  SearchResultList.swift
//  Maps
//
//  Created by Bikram Aryal on 13/05/2022.
//

import SwiftUI

struct SearchResultList: View {
    var body: some View {
        List(1...20, id: \.self) {index in
            Text("Search Result \(index)")
        }
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList()
    }
}
