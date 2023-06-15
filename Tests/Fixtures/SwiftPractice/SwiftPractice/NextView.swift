//
//  NextView.swift
//  SwiftPractice
//
//  Created by Trishan Amruthur on 6/14/23.
//

import Foundation
import SwiftUI

struct NextView: View {
    var body: some View {

        VStack {
       
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Next thing")
            Text(removeDup(string:"heel"))
        }
        .padding()
    }
}

struct NextViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func removeDup(string:String) -> String{
    
    var x = "lkookoko"
    return x
}
