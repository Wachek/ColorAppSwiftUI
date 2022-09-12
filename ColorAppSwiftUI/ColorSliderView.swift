//
//  ColorSliderView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 04.09.2022.
//

import SwiftUI

struct ColorSliderView: View {
    let color: Color
    @Binding var sliderValue: Double
    @Binding var textValue: String
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 50)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            TextField("\(lround(sliderValue))", text: $textValue)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.numberPad)
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(color: Color.red, sliderValue: .constant(15.0), textValue: .constant(""))
    }
}
