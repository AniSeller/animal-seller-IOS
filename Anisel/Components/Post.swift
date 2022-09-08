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
    var screenX = UIScreen.main.bounds.width;
    var titleWidth = UIScreen.main.bounds.width - 180;
    var subtitleWidth = UIScreen.main.bounds.width - 200;
    
    var body: some View {
        HStack{
            VStack{
                Text(title).fontWeight(Font.Weight.black)
                    .frame(width: titleWidth, alignment: Alignment.leading)
                    .multilineTextAlignment(TextAlignment.leading)
                    .padding(.bottom, 5)
                
                VStack{
                    HStack{
                        Image("BreedIcon")
                        Text(info.breed)
                            .frame(width: subtitleWidth, alignment: Alignment.leading)
                            .multilineTextAlignment(TextAlignment.leading)
                    }
                    .padding(.bottom, -2)

                    HStack{
                        Image("AgeIcon")
                        Text("Возраст: " + String(info.age) + " лет")
                            .frame(width: subtitleWidth, alignment: Alignment.leading)
                            .multilineTextAlignment(TextAlignment.leading)
                    }
                    .padding(.vertical, -2)
                    
                    HStack{
                        Image(info.gender.rawValue == Gender.Male.rawValue ? "MaleIcon" : "FemaleIcon")
                        
                        Text("Пол: " + (info.gender.rawValue == Gender.Male.rawValue ? "мальчик" : "девочка"))
                            .frame(width: subtitleWidth, alignment: Alignment.leading)
                            .multilineTextAlignment(TextAlignment.leading)
                    }
                    .padding(.top, -2)

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
