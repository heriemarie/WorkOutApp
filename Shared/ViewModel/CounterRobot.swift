//
//  CounterRobot.swift
//  WorkOutApp
//
//  Created by Herie Marie A. Estaño on 3/31/22.
//

import SwiftUI

class CounterRobot: ObservableObject {
    
   @Published var completedCount: Int = 0
    
    func addOneCount() {
        if completedCount < 10 {
            completedCount += 1
        } else {
            completedCount = 0
        }
      //  print(completedCount)
    }
    
    func resetCount() {
        completedCount = 0
      //  print(completedCount)
    }
    
}
