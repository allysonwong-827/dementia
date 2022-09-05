//
//  Intro.swift
//  dementia
//
//  Created by Ashley on 2022-09-05.
//

import Foundation
import SwiftUI

struct Intro : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Introduction")
                    .font(.largeTitle )
                //type intro
                Text("")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Intro()
        }
    }
}
