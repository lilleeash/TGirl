//
//  TGirlApp.swift
//  TGirl
//
//  Created by Darya Zhitova on 10.09.2021.
//

import SwiftUI

@main
struct TGirlApp: App {
   
   @StateObject var listViewModel: ListViewModel = ListViewModel()
   
    var body: some Scene {
        WindowGroup {
           NavigationView
           {
              ToDoList()
           }.environmentObject(listViewModel)
        }
    }
}
