//
//  Square-basedPyramidView.swift
//  AreaAndPerimeterCalculator
//
//  Created by dyhidrogen monoxide on 2023/1/20.
//

import SwiftUI

struct Square_basedPyramidView: View {
    
    @State var base: Double = 10
    @State var slantHeight: Double = 10
    @State var perpendicularHeight: Double = 10
    @State var desirePrecision: Double = 1
    
    //MARK: Computed Properties
    var volume: Double {
        return (1 / 3) * base * base * perpendicularHeight
    }
    
    var baseArea: Double {
        return base * base
    }
    
    var triangleArea: Double {
        return (1 / 2) * base * slantHeight
    }
    
    var totalSurfaceArea: Double {
        return baseArea + 4 * triangleArea
    }
    
    var body: some View {
        
        VStack(spacing: 5){
            
            Image("SquareBasedPyramid")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            Spacer()
                .frame(height: 30)
            
                Group{
                    // MARK: Base Length
                    Group {
                        Text("Base Length")
                            .font(.title2)
                            .bold()
                        
                        Slider(value: $base,
                               in: 0...100,
                               label: { Text("Base Length") },
                               minimumValueLabel: { Text("0") },
                               maximumValueLabel: { Text("100") })
                    
                        Text("\(base.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                    }
                    Spacer()
                        .frame(height: 5)
                    
                    // MARK: Slant Height
                    Group {
                        Text("Slant Height")
                            .font(.title2)
                            .bold()
                        
                        Slider(value: $slantHeight,
                               in: 0...100,
                               label: { Text("Slant Height") },
                               minimumValueLabel: { Text("0") },
                               maximumValueLabel: { Text("100") })
                    
                        Text("\(base.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                    }
                    Spacer()
                        .frame(height: 5)
                    
                    Group {
                        Text("Perpendicular Height")
                            .font(.title2)
                            .bold()
                        
                        Slider(value: $perpendicularHeight,
                               in: 0...100,
                               label: { Text("Perpendicular Height") },
                               minimumValueLabel: { Text("0") },
                               maximumValueLabel: { Text("100") })
                    
                        Text("\(base.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                    }
                    Spacer()
                        .frame(height: 5)
                }
                
                Group{
                    // MARK: Base Area
                    Group{
                        Text("Base Area")
                            .font(.title2)
                            .bold()
                        
                        Text("\(baseArea.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                    }
                    
                    // MARK: Triangle Area
                    Group{
                        Text("Triangle Area")
                            .font(.title2)
                            .bold()
                        
                        Text("\(triangleArea.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                        Spacer()
                            .frame(height: 5)
                    }
                    Spacer()
                        .frame(height: 5)
                    
                    Group{
                        Text("Total Surface Area")
                            .font(.title2)
                            .bold()
                        
                        Text("\(totalSurfaceArea.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                            .font(.title2)
                    }
                    // MARK: Volume
                    Group{
                        Text("Volume")
                            .font(.title2)
                            .bold()
                        
                        Text("\(volume.formatted(.number.precision(.fractionLength(Int(desirePrecision)))))")
                    }
                    Spacer()
                        .frame(height: 5)
                }
               
            
            
            ZStack{
                
                Stepper("Precision", value: $desirePrecision, in: 0...6)
                
                //Show precision
                Text("\(desirePrecision.formatted(.number.precision(.fractionLength(0))))")
                
            }
            
            
        }
        .padding(.all, 20.0)
        
    }
    
    struct Square_basedPyramidView_Previews: PreviewProvider {
        static var previews: some View {
            Square_basedPyramidView()
        }
    }
}
