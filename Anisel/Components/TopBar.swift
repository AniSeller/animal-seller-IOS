//
//  TopBar.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import SwiftUI

struct TopBar: View {
    
    var screenX = UIScreen.main.bounds.width;
    
    var body: some View {
        ZStack{
            Text("Главная")
                .font(Font.title3)
                .fontWeight(Font.Weight.black)
                .padding(.leading, 30)
                .frame(width: screenX, alignment: .leading)
                .padding(.vertical, 15.0)
                .background(Color(hue: 1, saturation: 0.0, brightness: 0.95))
            
            HStack{
                Image("FilterIcon")
                    .padding(.leading, screenX / 3.3)
                
                HStack{
                    Image("SearchIcon")
                    Text("Поиск")
                }
                .padding(.horizontal, 18.0)
                .padding(.vertical, 9.0)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 150))
            }
            .frame(width: screenX, alignment: Alignment.trailing)
            .padding(.trailing, 30)
        }


    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
