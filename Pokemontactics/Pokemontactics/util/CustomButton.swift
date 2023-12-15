//
//  CustomButton.swift
//  Pokemontactics
//
//  Created by ShinTakeuchi on 2023/11/25.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.custom("Roboto", size: 18).weight(.medium))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .frame(width: 328, height: 48, alignment: .center)
                .background(color)
                .cornerRadius(10)
                .padding(0)
                .frame(width: 360, height: 48, alignment: .center)
                .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 4)
        }
        .accessibilityIdentifier(title)
    }
}
