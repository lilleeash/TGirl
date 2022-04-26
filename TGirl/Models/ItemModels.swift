//
//  ItemModels.swift
//  TGirl
//
//  Created by Darya Zhitova on 25.11.2021.
//

import Foundation

struct ItemModel: Identifiable
{
   let id: String = UUID().uuidString
   let title: String
   let isCompleted: Bool
}
