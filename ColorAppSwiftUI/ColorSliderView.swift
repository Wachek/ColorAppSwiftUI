//
//  ColorSliderView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 04.09.2022.
//

import SwiftUI

struct ColorSliderView: View {
//    @State private var sliderValue = 15.0
//    @State private var textValue = ""
    let color: Color
    let action: () -> Void
    @Binding var sliderValue: Double
    @Binding var textValue: String

    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 50)
            Slider(value: $sliderValue, in: 1...255, step: 1)
                .accentColor(color)
            TextField("\(lround(sliderValue))", text: $textValue)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.numberPad)
                .toolbar {
                    ToolbarItem(placement: .keyboard) {
                        Button(action: action) {
                        Text("Done")
                        }
//                        Button("Done") {
//                        action
//                        }
                    }
                }
        }
        
        .padding()
                
        }
    }


struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(color: Color.red,action: {}, sliderValue: .constant(15.0), textValue: .constant(""))
    }
}
