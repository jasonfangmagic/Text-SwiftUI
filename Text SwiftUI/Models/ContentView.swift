//
//  ContentView.swift
//  Text SwiftUI
//
//  Created by Jason Fang on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
    Hike(name: "Sal", photo: "sal", miles: 6),
    Hike(name: "Tom", photo: "tom", miles: 5.8),
    Hike(name: "Tam", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        
        VStack {
            List(hikes) { hikes in
                HStack(alignment: .center){
                    Image(hikes.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 100)
                        
                    VStack(alignment: .center) {
                        Text(hikes.name)
                        Text("\(hikes.miles.formatted())")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

