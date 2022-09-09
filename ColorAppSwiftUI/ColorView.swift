//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 08.09.2022.
//

import SwiftUI

struct ColorView: View {
    let color: CGColor
    
    var body: some View {
        Color(color)
            .frame(height: 150)
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(Color.white, lineWidth: 5)
            )
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: CGColor(red: 255, green: 165, blue: 0, alpha: 1))
    }
}
