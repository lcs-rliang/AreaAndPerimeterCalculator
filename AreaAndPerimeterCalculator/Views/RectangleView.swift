//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by dyhidrogen monoxide on 2023/1/19.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored properties
    let length: Double = 7
    let width: Double = 5
    
    //MARK: Computed Properties
    var area: Double{
        return length * width
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
            
            Text("Length")
                .font(.title2)
                .bold()
            //Use string interpolation to convert
            //The Double data type to text (String)
            Text("\(length)")
                .font(.title2)
            
            Text("Width")
                .font(.title2)
                .bold()
            
            Text("\(width)")
                .font(.title2)
            
            Text("Area")
                .font(.title2)
                .bold()
            
            Text("\(area)")
                .font(.title2)
            
            Spacer()
            
        }
    }
    
    struct RectangleView_Previews: PreviewProvider {
        static var previews: some View {
            RectangleView()
        }
    }
}
