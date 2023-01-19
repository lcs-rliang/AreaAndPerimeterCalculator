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
                Text("\(length)")
                    .font(.title2)
            }
            .padding()
            
            Group {
                
                Text("Width")
                    .font(.title2)
                    .bold()
                
                Slider(value: $width,
                       in: 0...100,
                       label: { Text("Width") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") })
                
                Text("\(width)")
                    .font(.title2)
            }
            .padding()
            
            Group{
                Text("Area")
                    .font(.title2)
                    .bold()
                
                Text("\(area)")
                    .font(.title2)
            }
            .padding()
            
            Group{
                Text("Perimeter")
                    .font(.title2)
                    .bold()
                
                Text("\(perimeter)")
            }
            .padding()
        }
    }
    
    struct RectangleView_Previews: PreviewProvider {
        static var previews: some View {
            RectangleView()
        }
    }
}
