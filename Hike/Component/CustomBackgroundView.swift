//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Daniel Seitenfus on 27/02/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium
                ],
                startPoint: .top, endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
