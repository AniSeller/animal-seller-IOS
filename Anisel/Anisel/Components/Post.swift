//
//  Post.swift
//  Anisel
//
//  Created by Василий Гайсен on 06.09.2022.
//

import SwiftUI

struct Post: View {
    
    var title : String;
    var info : AnimalInfo;
    
    var body: some View {
        HStack{
            VStack{
                Text(title).fontWeight(Font.Weight.black)
                    .frame(width: 220, alignment: Alignment.leading)
                    .multilineTextAlignment(TextAlignment.leading)
                    .padding(.bottom, 5)
                
                VStack{
                    Text(info.breed)
                        .frame(width: 220, alignment: Alignment.leading)
                        .multilineTextAlignment(TextAlignment.leading)
                    
                    Text("Возраст: " + String(info.age) + " лет")
                        .frame(width: 220, alignment: Alignment.leading)
                        .multilineTextAlignment(TextAlignment.leading)
                    
                    Text("Пол: " + (info.gender.rawValue == Gender.Male.rawValue ? "мальчик" : "девочка"))
                        .frame(width: 220, alignment: Alignment.leading)
                        .multilineTextAlignment(TextAlignment.leading)
                }.padding(.leading, 10)

            }
            .padding([.top, .leading, .bottom], 20.0)
            .background(alignment: Alignment.leading) {
                
            }
            
            Rectangle()
                .frame(width: 100, height: 145, alignment: Alignment.trailing)
                .background(Color.green)
        }
        .background(Color(hue: 0.5, saturation: 0.0, brightness: 0.937))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(title: "Lena", info: AnimalInfo(breed: "British short hair cat", age: 1.5, gender: Gender.Female))
    }
}
