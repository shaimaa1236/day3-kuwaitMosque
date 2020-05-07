//
//  mosqueSecond.swift
//  kuwaitMosque
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct mosqueSecond: View {
    var mosque : mosqueListStruct
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image(mosque.mosqueImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 400)
                    .opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                Spacer()
            }
            VStack{
                Text(mosque.mosqueName)
                    .font(.custom("Arial", size: 70))
                    .foregroundColor(.white)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(mosque.shekhImage, id: \.self){ (shekh:String) in
                            Image(shekh)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180, alignment: .center)
                                .clipShape(Circle())
                        }
                    } .padding(.horizontal, 60)
                        .padding(.bottom, 20)
                }
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 15){
                        payer(prayerTime: "4:00am", prayerName: "الفجر")
                        payer(prayerTime: "5:00am", prayerName: "الشروق")
                        payer(prayerTime: "11:55am", prayerName: "الظهر")
                        payer(prayerTime: "3:10pm", prayerName: "العصر")
                        payer(prayerTime: "6:10pm", prayerName: "المغرب")
                        payer(prayerTime: "7:50pm", prayerName: "العشاء")
                    }.foregroundColor(.white)
                        .font(.custom("Arial", size: 35))
                        .padding(.horizontal, 75)
                }
            }.offset(y: 40)
        }
    }
}




struct payer: View {
    var prayerTime : String
    var prayerName : String
    var body: some View {
        HStack(alignment: .center, spacing: 30, content:{
            Text(prayerTime)
                .offset(x: 10)
            Spacer()
            Text(prayerName)
                .offset(x: -10)
        })
    }
}

struct mosqueSecond_Previews: PreviewProvider {
    static var previews: some View {
        mosqueSecond(mosque: mosqueKW[0])
            .environment(\.colorScheme, .dark)
    }
}
