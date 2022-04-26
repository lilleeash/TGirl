//
//  AddItem.swift
//  TGirl
//
///  Created by Darya Zhitova on 25.11.2021.
//

import SwiftUI

struct AddItem: View {
    
   @Environment(\.presentationMode) var presentationMode
   @EnvironmentObject var listViewModel: ListViewModel
   @State private var textFieldText: String = ""
    
    var body: some View {
       VStack {
             TextField("Add something...", text: $textFieldText)
               .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.indigoColor, lineWidth: 2).opacity(0.3)
                   )
                .frame(maxWidth: .infinity, maxHeight: 55)
                .padding()
                .textFieldStyle(.roundedBorder)
             Spacer()
             Button(action: saveButtonPressed, label: {
               ZStack
               {
                  RoundedRectangle(cornerRadius: 15)
                       .foregroundColor(Color.indigoColor)
                       .frame(maxWidth: .infinity, maxHeight: 45)
                       .padding()
                  Text("ADD TO LIST")
                     .foregroundColor(.white)
                     .fontWeight(.bold)
                     .font(.system(size: 15))
               }
            })
                  }.navigationTitle("Add new task")
    }
   
   func saveButtonPressed()
   {
    listViewModel.addItem(title: textFieldText)
    presentationMode.wrappedValue.dismiss()
   }
 
}


