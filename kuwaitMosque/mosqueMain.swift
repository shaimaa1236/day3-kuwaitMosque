//
//  ContentView.swift
//  kuwaitMosque
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct mosqueMain: View {
    var body: some View {
        ZStack{
            NavigationView{
                List(mosqueKW){ mosque in
                    NavigationLink(destination: mosqueSecond(mosque: mosque)){
                        mosqueView(mosque: mosque)
                    }
                }.navigationBarTitle("مساجد الكويت")
                    
            }.accentColor(.white)
        }
    }
}



struct mosqueView: View {
    var mosque : mosqueListStruct
    var body: some View {
        HStack{
            Image(mosque.mosqueImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, alignment: .center)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(mosque.mosqueName)
                    .font(.custom("Arial", size: 40))
                    .foregroundColor(.white)
                Text(mosque.mosqueArea)
                    .font(.custom("Arial", size: 20))
                    .foregroundColor(.white)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
             mosqueMain()
                .environment(\.colorScheme, .dark)
                .previewDevice("iPhone SE")
    }
}
