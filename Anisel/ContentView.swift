//
//  ContentView.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            TopBar();
            ZStack(alignment: .center){
                VStack(){
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                }
                
                NavigationBar()
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
