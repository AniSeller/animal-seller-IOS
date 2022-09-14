//
//  MainPage.swift
//  Anisel
//
//  Created by Василий Гайсен on 11.09.2022.
//

import SwiftUI
import Foundation

struct MainPage : View {
    
    var screenY = UIScreen.main.bounds.size.height;

    var body : some View {
        
        ZStack{
            
            ScrollView{
                TopBar(title: "Главная")
                    .zIndex(5)
            

                VStack{
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
                    
                }
                .frame()
            }
            .frame(height: screenY, alignment: Alignment.top);
                
                    
            NavigationBar(selection: .Main)
            .frame(maxHeight: screenY - 50, alignment: .bottom)
            .padding(.bottom, 50)
        }
        .navigationTitle("")
        .navigationBarHidden(false)
        .ignoresSafeArea(.container)
        .navigationBarBackButtonHidden(true)
        .frame(maxHeight: screenY, alignment: Alignment.top)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
