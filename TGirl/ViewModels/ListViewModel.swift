//
//  ListViewModel.swift
//  TGirl
//
//  Created by Darya Zhitova on 25.11.2021.
//

import Foundation


class ListViewModel: ObservableObject {
   @Published var items: [ItemModel] = []
   
   init() { getItems() }
   func getItems() {
      var newItems = [ItemModel(title: "Let's add new item!", isCompleted: false)]
      items.append(contentsOf: newItems)
   }
   func removeItems(indexSet: IndexSet) {
      items.remove(atOffsets: indexSet)
   }
   func moveItemes(from: IndexSet, to: Int) {
      items.move(fromOffsets: from, toOffset: to)
   }
   func addItem(title: String)
   {
      var newItems = ItemModel(title: title, isCompleted: false)
      items.append(newItems)
   }
   func updateItem(item: ItemModel)
   {
    
   }
}
