//
//  ContentView.swift
//  ConversionUnit
//
//  Created by AS on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State var userInput = ""
    
    let unitOptions: [UnitLength] = [.millimeters, .meters, .centimeters, .feet, .inches, .kilometers, .miles]
    
    var conversionUnit: Measurement<UnitLength> {
        let inputAmount = Measurement(value: Double(userInput) ?? 0, unit: unitOptions[inputUnit])
        let outputAmount = inputAmount.converted(to: unitOptions[outputUnit])
        return outputAmount
    }
    
    var formatter: MeasurementFormatter {
        let newFormat = MeasurementFormatter()
        newFormat.unitStyle = .long
        newFormat.unitOptions = .providedUnit
        return newFormat
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("\(formatter.string(from: unitOptions[inputUnit]))", text: $userInput)
                        .keyboardType(.decimalPad)
                    
                }
                Section {
                    Picker("Convert from", selection: $inputUnit) {
                        ForEach(0..<unitOptions.count, id: \.self){
                            let formattedOutput = formatter.string(from: unitOptions[$0])
                            Text("\(formattedOutput)")
                        }
                    }
                    .pickerStyle(.menu)
                    Picker("Convert to", selection: $outputUnit) {
                        ForEach(0..<unitOptions.count, id: \.self){
                            let formattedOutput = formatter.string(from: unitOptions[$0])
                            Text("\(formattedOutput)")
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                
                Section("Conversion result") {
                    Text(formatter.string(from: conversionUnit))
                }
            }
            .navigationTitle("Converter")
        }
    }
}


#Preview {
    ContentView()
}
