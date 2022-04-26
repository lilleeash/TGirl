//
//  ListRowView.swift
//  TGirl
//
//  Created by Darya Zhitova on 25.11.2021.
//

import SwiftUI

struct ListRowView: View {
   let item: ItemModel
    var body: some View {
        HStack
       {
          Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
          Text(item.title)
          Spacer()
          NavigationLink(destination: InfoList())
          {
            Image("info.circle")
          }
       }.font(.title2)
    }
}
