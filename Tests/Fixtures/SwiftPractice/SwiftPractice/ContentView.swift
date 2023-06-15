//
//  ContentView.swift
//  SwiftPractice
//
//  Created by Trishan Amruthur on 6/14/23.
//

import SwiftUI


enum Math {
    static let e = 2.718281828459045235360287
    static let root2 = 1.41421356237309504880168872
}

struct ContentView: View {
    var body: some View {
        
        let width = 120.0                                    // Double
        let widthString = (width as NSNumber).stringValue    // String
        
        NavigationView{
            VStack {
                let value = 5
                let x = Math.root2
                NavigationLink(destination:NextView()){
                    Text("Do Something")
                    
                }
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Text("sdfdsf \(x) ")
            }
            .padding()
        }
            
            
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
