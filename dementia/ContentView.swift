//
//  ContentView.swift
//  dementia
//
//  Created by Allyson Wong on 27/8/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    private var threeColumnGrid = [GridItem(.flexible()),  GridItem(.flexible()),GridItem(.flexible())]
    
    private var fourColumnGrid = [GridItem(.flexible()),  GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    @State var cards = createCardlist().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    var body: some View {
        GeometryReader {geo in
            VStack{
                Text("Ocean Memory 🌊")
                    .font(.largeTitle )
                
                LazyVGrid(columns: threeColumnGrid, spacing: 10) {
                    ForEach(cards) {card in
                       CardView(card: card,
                                width: Int(geo.size.width/4 - 10),
                                MatchedCards:$MatchedCards,Userchoices:$UserChoices)
                    }
               
                VStack{
                    Text("Match these cards to win:")
                    LazyVGrid(columns: fourColumnGrid, spacing: 20){
                        ForEach (cardvalues, id:\.self) {
                            cardvalue in
                            if !MatchedCards.contains(where: {$0.text == cardvalue}){
                                Text(cardvalue)
                                    .font(.system(size: 40))
                                
                  }
               }
            }
        }
    }
}
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

}
