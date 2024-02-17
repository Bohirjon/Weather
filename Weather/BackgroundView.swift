//
//  BackgroundView.swift
//  Weather
//
//  Created by Bohirjon Akhmedov on 2/17/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.backgroundLightBlue, Color.backgroundBlue]),
                       startPoint: .bottomTrailing, endPoint: .topLeading)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
