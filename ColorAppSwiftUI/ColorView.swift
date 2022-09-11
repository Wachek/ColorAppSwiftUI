//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 08.09.2022.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    
    var body: some View {
        color
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
        ColorView(color: Color(red: 255, green: 0, blue: 100))
    }
}
