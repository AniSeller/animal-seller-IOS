//
//  DialogsPage.swift
//  Anisel
//
//  Created by Василий Гайсен on 14.09.2022.
//

import SwiftUI

struct DialogsPage: View {
    
    var screenY = UIScreen.main.bounds.size.height;

    var body: some View {
        ZStack{
            VStack{
                TopBar(title: "Диалоги")
                Text("У Вас нет диалогов")
            }
            .frame(height: screenY, alignment: Alignment.top);

            
            NavigationBar(selection: .Dialogs)
                .frame(height: screenY - 50, alignment: Alignment.bottom)
                .padding(.bottom, 50)
        }
        .navigationTitle("")
        .navigationBarHidden(false)
        .ignoresSafeArea(.container)
        .navigationBarBackButtonHidden(true)
        .frame(maxHeight: screenY, alignment: Alignment.top)
    }
}

struct DialogsPage_Previews: PreviewProvider {
    static var previews: some View {
        DialogsPage()
    }
}
