//
//  ContentView.swift
//  Anisel
//
//  Created by Василий Гайсен on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        
            Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
           
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
