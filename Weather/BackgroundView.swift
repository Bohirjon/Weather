//
//  BackgroundView.swift
//  Weather
//
//  Created by Bohirjon Akhmedov on 2/17/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
