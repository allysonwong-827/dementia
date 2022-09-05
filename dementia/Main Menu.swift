//
//  Main Menu.swift
//  dementia
//
//  Created by Ashley on 2022-09-05.
//

import Foundation
import SwiftUI

struct Menu : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Dementia App")
                    .font(.largeTitle)
                NavigationLink(destination: Intro()) {
                    Text("Introduction")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Matching Game")
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Menu()
        }
    }
}
