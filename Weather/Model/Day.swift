//
//  Day.swift
//  Weather
//
//  Created by Bohirjon Akhmedov on 2/17/24.
//

import Foundation

struct Day : Identifiable {
    
    init(day: String, temprature: Float, icon: String) {
        self.id = day.hashValue
        self.day = day
        self.temprature = temprature
        self.icon = icon
    }
    
    var id: Int
    var day: String
    var temprature: Float
    var icon: String
}
