//
//  SphereView.swift
//  AreaAndPerimeterCalculator
//
//  Created by dyhidrogen monoxide on 2023/1/20.
//

import SwiftUI

struct SphereView: View {
    
    //MARK: Stored properties
    //  @State is a "property wrapper" that essentially
    //  tells Swoƒ
    @State var radius: Double = 50
    @State var desirePrecision: Double = 1
    
    //MARK: Computed Properties
    var volume: Double {
        return 0.75 * Double.pi * radius * radius * radius
    }
    
    var surfaceArea: Double {
        return 4 * Double.pi * radius * radius
    }
    
    var body: some View {
        VStack(spacing: 10){
            
            Image("Sphere")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                Spacer()
                    .frame(height: 30)
                
            
            Group {
                Text("Radius")
                    .font(.title2)
                    .bold()
                
                Slider(value: $radius,
                       in: 0...100,
                       label: { Text("Length") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                //Use string interpolation to convert
                //The Double data type to text (String)
                
                //\
                Text("\(radius.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                    .font(.title2)
            }
            Spacer()
                .frame(height: 15)
            
            Group{
                Text("Surface Area")
                    .font(.title2)
                    .bold()
                
                Text("\(surfaceArea.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                    .font(.title2)
            }
            Spacer()
                .frame(height: 15)
            
            Group{
                Text("Volume")
                    .font(.title2)
                    .bold()
                
                Text("\(volume.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
            }
            Spacer()
                .frame(height: 15)
            
            
            ZStack{
                
                Stepper("Precision", value: $desirePrecision, in: 0...6)
                
                //Show precision
                Text("\(desirePrecision.formatted(.number.precision(.fractionLength(0))))")
                
            }
            
            
        }
        .padding(.all, 20.0)
        
    }
    
    struct SphereView_Previews: PreviewProvider {
        static var previews: some View {
            SphereView()
        }
    }
}
