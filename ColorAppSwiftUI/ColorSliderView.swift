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
//    let action: () -> Void
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
//        .toolbar {
//            ToolbarItem(placement: .keyboard) {
//                Button(action: action) {
//                    Text("Done")
//                }
                //                        Button("Done") {
                //                        action
                //                        }
            }

        }
        

        
    



struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(color: Color.red, sliderValue: .constant(15.0), textValue: .constant(""))
    }
}
