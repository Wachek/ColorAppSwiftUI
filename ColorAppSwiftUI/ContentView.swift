//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 04.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = 0.0
    @State private var greenValue = 100.0
    @State private var blueValue = 200.0
    @State private var inputValue = ""
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                ColorView(color: CGColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1))
                ColorSliderView(color: .red, action: checkValue, sliderValue: $redValue, textValue: $inputValue)
                ColorSliderView(color: .green, action: checkValue, sliderValue: $greenValue, textValue: $inputValue)
                ColorSliderView(color: .blue, action: checkValue, sliderValue: $blueValue, textValue: $inputValue)
            }
        }
    }
        
        
        func checkValue() {
            if let _ = Double(inputValue) {
                return
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
