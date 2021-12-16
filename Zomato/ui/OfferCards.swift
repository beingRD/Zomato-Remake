//
//  OfferCards.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct OfferCards: View {
    var offers = offerData
    let generator = UIImpactFeedbackGenerator()
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(offers) { offer in
                    NavigationLink(destination: Text("SampleText")){
                        if #available(iOS 15.0, *) {
                            
                            
                            ZStack{
                                offer.image
                                    .resizable()
                                    .cornerRadius(12)
                                    .scaledToFill()
                                    .opacity(0.22)
                                VStack(alignment:.leading){
                                    
                            
                                    
                                    Text(offer.title)
                                        .font(.title)
                                        .foregroundColor(Color.black)
                                        .fontWeight(.bold)
                                        .font(Font.system(size: 20))
                                        .lineLimit(2)
                                    
                                    Text(offer.subtitle)
                                        .foregroundColor(Color.black)
                                        .font(.subheadline)
                                    
                                }.padding(0)
                                
                            }
                            .frame(width: UIScreen.main.bounds.width*0.4-2, height:UIScreen.main.bounds.height*0.2)
                            .cornerRadius(24)
//                            .padding(.leading, 10)
                            .background {
                                LinearGradient(colors: [.cranberry_slush, .cranberry_red], startPoint: .top, endPoint: .bottom)
                                    .cornerRadius(24)
                                    .opacity(0.8)
                            }
                        } else {
                            // TODO :/
                        }
                    }
                }
            }
        }
    }
}

#if DEBUG
struct OfferCards_Previews: PreviewProvider {
    static var previews: some View {
        OfferCards()
    }
}
#endif

struct Offers : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var image : Image
    var color : Color
    var shadowColor : Color
}

let offerData = [
    Offers(title: "50% Off", subtitle: "on Christmas", image: Image( "christmas"), color: Color.yellow.opacity(0.8), shadowColor: Color.yellow),
    Offers(title: "30% Off", subtitle: "on Deliveries",image:Image( "pizza"), color: Color.red, shadowColor: Color.red),
    Offers(title: "Buy 1", subtitle: "Get 1 free!",image:Image( "pasta"), color: Color.yellow, shadowColor: Color.yellow.opacity(0.8)),
    Offers(title: "Zomato", subtitle: "Meals at €2.99", image: Image("indian"), color: Color.red.opacity(0.8), shadowColor: Color.red)
    
]
