//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Вячеслав Турчак on 04.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = 255.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    @State private var inputRedValue = ""
    @State private var inputGreenValue = ""
    @State private var inputBlueValue = ""
    @State private var alertPresented = false
    
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                ColorView(color: Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255))
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                ColorSliderView(color: .red,  sliderValue: $redValue, textValue: $inputRedValue)
                ColorSliderView(color: .green,  sliderValue: $greenValue, textValue: $inputGreenValue)
                ColorSliderView(color: .blue,  sliderValue: $blueValue, textValue: $inputBlueValue)
                Spacer()
            }
            
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button {
                        check()
                    } label: {
                        Text("Done")
                    }
                }
            }
            .alert("Wrong format", isPresented: $alertPresented) {
                Button("Done") {}
            } message: {
                Text("Enter number")
            }
        }
    }
        
    func check() {
        if let newRedValue = Double(inputRedValue), newRedValue >= 0, newRedValue <= 255 {
            redValue = newRedValue
            inputRedValue = ""
        } else {
            if let newGreenValue = Double(inputGreenValue), newGreenValue >= 0, newGreenValue <= 255 {
                greenValue = newGreenValue
                inputGreenValue = ""
            } else {
                if let newBlueValue = Double(inputBlueValue), newBlueValue >= 0, newBlueValue <= 255 {
                    blueValue = newBlueValue
                    inputBlueValue = ""
                } else {
                    alertPresented.toggle()
                    inputRedValue = ""
                    inputGreenValue = ""
                    inputBlueValue = ""
                    return
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
