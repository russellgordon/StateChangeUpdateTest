//
//  ContentView.swift
//  StateChangeUpdateTest
//
//  Created by Russell Gordon on 2020-12-26.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Items

    var body: some View {
        VStack {
            List(model.items) { item in
                Text("\(item.value)")
            }
            
            Button("1. Change an item to 100") {
                
                model.items.randomElement()?.value = 100
                
                print("==============")
                for item in model.items {
                    print("\(item.value)")
                }
            }
            .padding()

            Button("2. Change an item to 0 & tweak array") {
                
                model.items.randomElement()?.value = 0
                
                // tweak the array to refresh the list
                model.items.append(Item(value: -1))
                model.items.removeLast()
                
                print("==============")
                for item in model.items {
                    print("\(item.value)")
                }
            }
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
