//
//  ContentView.swift
//  Intergalactic Travel
//
//  Created by Nicholas Papierniak on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                StarLink (name: "Blue Star")
                .padding()
                StarLink (name: "Red Dwarf")
                .foregroundColor(.red)
                
            }
            .navigationBarTitle("Intergalactic Travel", displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StarLink: View {
    let name: String
    var body: some View {
        NavigationLink("Travel to \(name)") {
            Image (name)
                .resizable ()
                .aspectRatio(contentMode: .fill)
        }
    }
}
