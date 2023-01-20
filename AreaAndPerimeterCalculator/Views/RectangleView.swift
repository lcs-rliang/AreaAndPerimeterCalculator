//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by dyhidrogen monoxide on 2023/1/19.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored properties
    //  @State is a "property wrapper" that essentially
    //  tells Swoƒ
    @State var length: Double = 50
    @State var width: Double = 25
    @State var desirePrecision: Double = 1
    
    
    //MARK: Computed Properties
    var area: Double {
        return length * width
    }
    
    var perimeter: Double {
        return 2 * (length + width)
    }
    
    //Expressing the user interface
    var body: some View {
        VStack{
            
            HStack{
                
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            
            Group {
                Text("Length")
                    .font(.title2)
                    .bold()
                
                Slider(value: $length,
                       in: 0...100,
                       label: { Text("Length") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                //Use string interpolation to convert
                //The Double data type to text (String)
                
                //\
                Text("\(length.formatted(.number.precision(.fractionLength(2))))")
                    .font(.title2)
            }
            
            
            Group {
                
                Text("Width")
                    .font(.title2)
                    .bold()
                
                Slider(value: $width,
                       in: 0...100,
                       label: { Text("Width") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                
                Text("\(width.formatted(.number.precision(.fractionLength(2))))")
                    .font(.title2)
            }
            
            
            Group{
                Text("Area")
                    .font(.title2)
                    .bold()
                
                Text("\(area.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                    .font(.title2)
            }
           
            
            Group{
                Text("Perimeter")
                    .font(.title2)
                    .bold()
                
                Text("\(perimeter)")
            }
            
            
            Stepper("Precision", value: $desirePrecision, in: 0...6)
            
            
            //Show precision
            Text("\(desirePrecision.formatted(.number.precision(.fractionLength(0))))")
        }
        Spacer()
    }
    
    struct RectangleView_Previews: PreviewProvider {
        static var previews: some View {
            RectangleView()
        }
    }
}
