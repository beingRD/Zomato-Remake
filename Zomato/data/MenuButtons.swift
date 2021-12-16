//
//  MenuButtons.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct MenuButtons: View {
    let menu = menuData
    var body: some View {
        
        
        
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(menu) { offer in
                    ZStack{
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                            .foregroundColor(Color.blue)
                            .shadow(radius: 4)
                        VStack{
                            Image(systemName: offer.image)
                            Text(offer.title)
                                .lineLimit(nil)
                        }.padding()  
                    }
                }
            }
        }
    }
}

#if DEBUG
struct MenuButtons_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtons()
    }
}
#endif

struct MenuOptions : Identifiable {
    
    var id = UUID()
    var image : String
    var title : String
}

let menuData = [
    
    MenuOptions(image: "airplane", title: "Exp\nDelivery"),
    MenuOptions(image: "dollarsign.circle", title: "Piggy\nBank"),
    MenuOptions(image: "percent", title: "Great\nOffers"),
    MenuOptions(image: "arrow.turn.right.up", title: "Trending\nPlaces")
]
