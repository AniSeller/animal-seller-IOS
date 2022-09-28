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
            VStack{

                ScrollView{
                    TopBar(title: "Главная")
                        .frame(alignment: .top)
    //                    .zIndex(5)

                VStack{
                
                    Post(title: "Лена", info:
                            AnimalInfo(breed: "Британская Кошка",age: 1.5, gender: .Female))
                    Post(title: "Лена", info: AnimalInfo(breed: "Британская Кошка", age: 1.5, gender: Gender.Female))
                    Post(title: "Лена", info: AnimalInfo(breed: "Британская Кошка", age: 1.5, gender: Gender.Female))
                    Post(title: "Лена", info: AnimalInfo(breed: "Британская Кошка", age: 1.5, gender: Gender.Female))
                    Post(title: "Лена", info: AnimalInfo(breed: "Британская Кошка", age: 1.5, gender: Gender.Female))
                    Post(title: "Лена", info: AnimalInfo(breed: "Британская Кошка", age: 1.5, gender: Gender.Female))
                    
                }
                .frame()
            }
            .mask(LinearGradient(gradient: Gradient(colors: [.black, .black, .black, .clear.opacity(0.9)]), startPoint: .top, endPoint: .bottom))
            .frame(height: screenY, alignment: Alignment.top);
                
                    
  
            }
            NavigationBar(selection: .Main)
            .frame(maxHeight: screenY - 50, alignment: .bottom)
            .padding(.bottom, 50)
        }
//        .navigationTitle("")
        .navigationBarHidden(false)
        .ignoresSafeArea(.container)
        .navigationBarBackButtonHidden(true)
        .frame(maxHeight: screenY, alignment: Alignment.top)

    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainPage()
                .previewInterfaceOrientation(.portrait)
            MainPage()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
