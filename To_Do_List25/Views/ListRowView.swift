//
//  ListRowView.swift
//  To_Do_List25
//
//  Created by Aleksandr Zhazhoyan on 04.04.2025.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}


#Preview {
    var item1 = ItemModel(title: "Первый элемент", isCompleted: false)
    var item2 = ItemModel(title: "Второй элемент", isCompleted: true)
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
