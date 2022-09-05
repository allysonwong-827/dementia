//
//  Dementia.swift
//  dementia
//
//  Created by Allyson Wong on 27/8/2022.
//

import Foundation
import SwiftUI

class Card:Identifiable, ObservableObject {
    var id = UUID()
    @Published var isfaceUP = false
    @Published var isMatched = false
    var text:String

    init(text:String){
        self.text = text
    }
    
    func  turnOver() {
        self.isfaceUP.toggle()
    }
}

let cardvalues:[String] = [
    "🐡","🦞","🐬","🦈","🦑","🐙"
]

func createCardlist() -> [Card] {
    //blank list//
    var cardlist = [Card]()
    
    for cardValue in cardvalues {
            cardlist.append(Card(text: cardValue))
            cardlist.append(Card(text: cardValue))
    }
    
    return cardlist
}


let faceDownCard = Card(text: "?")

