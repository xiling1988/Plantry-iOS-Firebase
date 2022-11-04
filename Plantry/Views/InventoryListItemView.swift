//
//  InventoryListView.swift
//  Plantry
//
//  Created by Emirates on 19/10/2022.
//

import SwiftUI

struct InventoryListItemView: View {
    var items = testDataItems
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                        InventoryItemView(item: item)                    
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Inventory")
            
        }
    }
}

struct InventoryListItemView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryListItemView()
    }
}
