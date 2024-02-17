//
//  ContentView.swift
//  Weather
//
//  Created by Bohirjon Akhmedov on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    
    var days = [Day(day: "Thuesd", temprature: 34, icon: "cloud.sun.fill")
                ,Day(day: "Wedsday", temprature: 30, icon: "sun.max.fill")
                ,Day(day: "Thursday", temprature: 25, icon: "wind")
                ,Day(day: "Friday", temprature: 27, icon: "sunset.fill")
                ,Day(day: "Saturday", temprature: 23, icon: "moon.stars.fill")]
    
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .center) {
                Text("Gulakandoz")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 1) {
                    Image(systemName: "cloud.sun.fill")
                        .symbolRenderingMode(.multicolor)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("34°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                HStack(spacing: 27){
                    ForEach(days) { day in 
                        VStack {
                            Text(day.day.prefix(3))
                            
                            Image(systemName: day.icon)
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.white)
                            
                            Text(day.temprature.description)
                        }
                        .font(.system(size: 20, weight: .medium))
                        .foregroundStyle(.white)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
