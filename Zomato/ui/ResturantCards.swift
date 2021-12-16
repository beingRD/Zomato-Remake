//
//  ResturantCards.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct ResturantCards: View {
    var body: some View {
        VStack {
            Image("pizza")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height / 4)
                .clipped()
            VStack {
                HStack{
                    Text("Capizzi")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    Spacer()
                    ForEach(0..<4) { item in
                        Image(systemName:"star.fill")
                            .font(Font.system(size: 18))
                            .foregroundColor(Color.black)
                    }
                    
                    Image(systemName:"star")
                        .font(Font.system(size: 18))
                        .foregroundColor(Color.black)
                    
                }
                HStack{
                    Text("Italian")
                        .font(.subheadline)
                        .foregroundColor(Color.black)
                    Spacer()
                    Image(systemName:"eurosign.circle")
                        .foregroundColor(Color.black)
                    Text("19.99 per person")
                        .font(Font.system(size: 13))
                        .foregroundColor(Color.black)
                }
                Divider()
                HStack{
                    Image(systemName: "location")
                        .foregroundColor(Color.black)
                    Text("Live Tracking")
                        .font(Font.system(size: 12))
                        .foregroundColor(Color.black)
                    Spacer()
                    HStack{
                        Image(systemName:"car")
                            .foregroundColor(Color.black)
                        Text("30 Mins")
                            .lineLimit(nil)
                            .font(Font.system(size: 13))
                            .foregroundColor(Color.black)
                    }
                }
            }
           
            .padding(.horizontal)
            
        }
        .cornerRadius(24)
        .padding([.horizontal, .bottom])
//        .background(Color.cranberry_red.opacity(0.8)
//        .background(LinearGradient(colors: [.cranberry_slush, .cranberry_red], startPoint: .top, endPoint: .bottom)
        .background(Color.cardbackground
                        .cornerRadius(24)
                        .opacity(0.8)
                        .frame(width: UIScreen.main.bounds.width - 32)
                        .cornerRadius(24)
                        .shadow(color: .gray.opacity(0.4), radius: 16, x: 0, y: 0))

    }
}


#if DEBUG
struct ResturantCards_Previews: PreviewProvider {
    static var previews: some View {
        ResturantCards()
    }
}
#endif
