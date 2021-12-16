//
//  Popular Cusines.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct PopularCusines: View {
    let cus = cuisines
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "hand.thumbsup")
                Text("Popular Cusines Around you")
                    .fontWeight(.heavy)
            }.padding()
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(cus) { offer in
                        ZStack(){
//                            Rectangle()
//                                .frame(width: UIScreen.main.bounds.width*0.4-2, height:UIScreen.main.bounds.height*0.2)
//                                .cornerRadius(8)
//                                .foregroundColor(.cranberry_red)
//                                .shadow(radius: 6)
//                                .padding(0)
                            Image(offer.image)
                                .resizable()
                                .cornerRadius(12)
                                .scaledToFill()
                                .opacity(0.22)
                            
                            VStack(alignment: .center){
//                                Spacer()
                                Text(offer.name)
                                    .font(.title)
                                    .foregroundColor(Color.black)
                                    .fontWeight(.bold)
                                    .font(Font.system(size: 20))
                                    .lineLimit(2)
                                Text(offer.places)
                                    .font(.subheadline)
                                    .foregroundColor(Color.black)
                            }
                        }.frame(width: UIScreen.main.bounds.width*0.4-2, height:UIScreen.main.bounds.height*0.2)
                            .background(Color.cranberry_slush.opacity(0.8))
                            .cornerRadius(24)
                            .padding(.leading, 0)
                            
                                            
                    }
                }
            }
        }.padding()
    }
}

#if DEBUG
struct PopularCusinesPreviews: PreviewProvider {
    static var previews: some View {
        PopularCusines()
    }
}

#endif

struct PopCuisines : Identifiable {
    var id = UUID()
    var name : String
    var places : String
    var image : String
    
}

let cuisines = [
    
    PopCuisines(name: "Pizza", places: "48 Places", image:"pizza"),
    PopCuisines(name: "Pasta", places: "24 Places", image: "pasta"),
    PopCuisines(name: "Paneer", places: "12 Places", image: "indian"),
    PopCuisines(name: "Ramen", places: "6 Places", image: "japanese")
]
