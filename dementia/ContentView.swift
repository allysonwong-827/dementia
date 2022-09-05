import SwiftUI
import CoreData

struct ContentView: View {
    
    private var threeColumnGrid = [GridItem(.flexible()),  GridItem(.flexible()),GridItem(.flexible())]
    
    private var fourColumnGrid = [GridItem(.flexible()),  GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    private var sixColumnGrid = [GridItem(.flexible(), spacing: 25),GridItem(.flexible(), spacing: 25),GridItem(.flexible(), spacing: 25),GridItem(.flexible(), spacing: 25),GridItem(.flexible(), spacing: 25),GridItem(.flexible(), spacing: 25)]
    
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
                    Text("Match these cards:")
                        .font(.system(size:10))
                        .frame(width: 300, height: 10)
                    Spacer()
                    LazyVGrid(columns: sixColumnGrid, spacing: 10){
                        ForEach (cardvalues, id:\.self) {
                            cardvalue in
                            if !MatchedCards.contains(where: {$0.text == cardvalue}){
                                Text(cardvalue)
                                    .font(.title)
                                    .frame(width: 50, height: 50, alignment: .center)
                                    
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
