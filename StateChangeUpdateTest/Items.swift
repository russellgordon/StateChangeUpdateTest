//
//  Items.swift
//  StateChangeUpdateTest
//
//  Created by Russell Gordon on 2020-12-26.
//

import Foundation

class Items: ObservableObject {
    
    @Published var items: [Item]

    init() {
        self.items = []
        for _ in 1...10 {
            self.items.append(Item(value: Int.random(in: 1...100)))
        }
    }
    
}
