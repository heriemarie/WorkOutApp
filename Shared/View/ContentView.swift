//
//  ContentView.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 3/31/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack() {
            
            Counter(label: "PUSH-UPS!", count: "10")
        
            HStack(spacing: 75) {
                Counter(label: "PULL-UPS!", count: "10")
                Counter(label: "SIT-UPS!", count: "10")
            }
        }//:VSTACK
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
