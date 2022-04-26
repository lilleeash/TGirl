//
//  ToDoList.swift
//  TGirl
//
///  Created by Darya Zhitova on 25.11.2021.
//

import SwiftUI

struct ToDoList: View {
   @EnvironmentObject var listViewModel: ListViewModel
   
    var body: some View {
       List
        {
          ForEach(listViewModel.items)
            {
                item in ListRowView(item: item)
                
            }.onDelete(perform: listViewModel.removeItems).onMove(perform: listViewModel.moveItemes)
       }.navigationBarTitle("Your tasks")
         .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddItem()))
         .listStyle(PlainListStyle())
    }
}

