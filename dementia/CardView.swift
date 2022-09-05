//
//  SwiftUIView.swift
//  dementia
//
//  Created by Allyson Wong on 27/8/2022.
//

import SwiftUI

struct CardView: View {
    
    @ObservedObject var card:Card
    let width:Int
    
    @Binding var MatchedCards:[Card]
    @Binding var Userchoices :[Card]
    
    //@Binding var UserChoices:[Card]
    
    
    var body: some View {
        if card.isfaceUP || MatchedCards.contains(where: {$0.id == card.id}) {
            Text(card.text)
            .font(.system(size:35))
            .padding()
            .frame(width: CGFloat(width), height: CGFloat(width))
            .background(Color(red:0.68, green:0.83, blue:0.96))
            .cornerRadius(10)
            .overlay(
               RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 0.18, green: 0.32, blue: 0.46), lineWidth: 5)
            )
        }else {
            Text("?")
                .font(.system(size:50))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(width))
                .background(Color(red:0.68, green:0.83, blue:0.96))
                .cornerRadius(10)
                .overlay(
                   RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.18, green: 0.32, blue: 0.46), lineWidth: 5)
                )
                .onTapGesture {
                    if Userchoices.count == 0 {
                        card.turnOver()
                        Userchoices.append(card)
                    } else if Userchoices.count == 1 {
                        card.turnOver()
                        Userchoices.append(card)
                        withAnimation(Animation.linear.delay(1)){
                            for thisCard in Userchoices {
                                thisCard.turnOver()
                            }
                        }
                        CheckforMath()
                    }
                }
        }
        }
    func CheckforMath(){
        if Userchoices[0].text == Userchoices[1].text {
            MatchedCards.append(Userchoices[0])
            MatchedCards.append(Userchoices[1])
        }
        Userchoices.removeAll()
    }
    }



