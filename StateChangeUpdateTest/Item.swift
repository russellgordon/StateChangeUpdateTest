//
//  Item.swift
//  StateChangeUpdateTest
//
//  Created by Russell Gordon on 2020-12-26.
//

import Foundation

class Item: Identifiable, ObservableObject {

    let id = UUID()
    @Published var value: Int
    
    init(value: Int) {
        self.value = value
    }

}
