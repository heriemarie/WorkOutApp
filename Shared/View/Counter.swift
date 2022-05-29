//
//  PullUpsCounter.swift
//  WorkOutApp
//
//  Created by Herie Marie A. Estaño on 3/31/22.
//

import SwiftUI


struct Counter: View {
    
//    private let label: String = "PULL-UPS!"
//    private let count: String = "10"
    
    let label: String
    let count: String
    
    @State var colorBackground: Color = Color.orange
 
    @StateObject var counterRobot: CounterRobot = CounterRobot()

    var body: some View {
        
        VStack {
            Text("\(counterRobot.completedCount)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(.white))
                .frame(width: 100, height: 100)
                .background(colorBackground)
                .clipShape(Circle())
                .onTapGesture {
                    _ = didTap(label: label)
                    counterRobot.addOneCount()
                    _ = resetBackground()
                }
                .onLongPressGesture {
                    counterRobot.resetCount()
                    _ = resetBackground()
                }
            
            Text(label)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemGray))
                .kerning(2)
                .padding(.top, 20)
                .padding(.bottom, 20)
        }//: VSTACK
        
    }
    
    func didTap(label: String) -> Color {
        
        switch label {
        case "PUSH-UPS!" :
            colorBackground = Color.red
        case "PULL-UPS!" :
            colorBackground = Color.blue
        case "SIT-UPS!":
            colorBackground = Color.yellow
        default:
            colorBackground = Color.orange
        }
        return colorBackground
    }
    
   func resetBackground() -> Color {
    if counterRobot.completedCount == 0 {
        colorBackground = Color.orange
    }
    return colorBackground
    
   }
}

struct PullUpsCounter_Previews: PreviewProvider {
    static var previews: some View {
        Counter(label: "PROTOTYPE", count: "0")
    }
}
