//
//  ContentView.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import SwiftUI

struct ContentView: View {

    var screenY = UIScreen.main.bounds.size.height;

    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
            NavigationView{
                MainPage()
                    .frame(height: screenY , alignment: Alignment.top)

            }
        }

        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
