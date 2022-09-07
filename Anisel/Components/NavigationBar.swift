//
//  NavigationBar.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import Foundation
import SwiftUI

struct NavigationBar : View {
   
    var body: some View {
        HStack{
            Image("HomeIconActive")
                .padding(.trailing, 28)
            Image("DialogsIcon")
                .padding(.trailing, 28)
            Image("NotificationsIcon")
                .padding(.trailing, 28)
            Image("ProfileIcon")

        }
        .padding(.horizontal, 37)
        .padding(.vertical, 18)
        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.94))
        .clipShape(RoundedRectangle(cornerRadius: 9999))
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationBar()
            
        }
    }
}
