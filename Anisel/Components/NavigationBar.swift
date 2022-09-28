//
//  NavigationBar.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import Foundation
import SwiftUI

struct NavigationBar : View {

    var selection : NavigationBarElement;
    var inlinePadding : CGFloat = 22;
    
    var body: some View {
        HStack{
            NavigationLink(destination: MainPage()){
                Image("HomeIcon" + (selection == NavigationBarElement.Main ? "Active" : ""))
                    .padding(.trailing, inlinePadding)
            }
            

            NavigationLink(destination: DialogsPage()){
                Image("DialogsIcon" + (selection == NavigationBarElement.Dialogs ? "Active" : ""))
                    .padding(.trailing, inlinePadding)
            }

            NavigationLink(destination: NotificationsPage()){
                Image("NotificationsIcon"  + (selection == NavigationBarElement.Notifications ? "Active" : ""))
                    .padding(.trailing, inlinePadding)
            }
            
            NavigationLink(destination: ProfilePage()){
                Image("ProfileIcon" + (selection == NavigationBarElement.Profile ? "Active" : ""))

            }
        }
        .padding(.horizontal, 37)
        .padding(.vertical, 25)
        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.94))
        .clipShape(RoundedRectangle(cornerRadius: 9999))
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationBar(selection: .Dialogs)
            
        }
    }
}
