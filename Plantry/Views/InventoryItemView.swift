//
//  InventoryItemView.swift
//  Plantry
//
//  Created by Emirates on 19/10/2022.
//

import SwiftUI

struct InventoryItemView: View {
    
    var item: InventoryItem
    
    var body: some View {
        HStack(alignment: .center,  spacing: 16) {
            Image(item.category.rawValue)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                VStack(alignment: .leading, spacing: 10) {
                    Text("\(item.quantity) \(item.unitMeasure.rawValue)")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                    Text("Location: \(item.location.rawValue)")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                }
            }
        }
    }
}

struct InventoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        let items = testDataItems
        InventoryItemView(item: items[0])
            .previewLayout(.sizeThatFits)
    }
}
