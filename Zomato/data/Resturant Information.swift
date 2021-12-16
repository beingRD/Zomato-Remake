//
//  Resturant Information.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct Resturant_Information: View {
    var body: some View {
        VStack {
            ZStack {
                
                Image("ResturantIcon")
                    .resizable()
                    .frame(height:180)
                ResturantTopBar()
                
            }
        }
    }
}

#if DEBUG
struct Resturant_Information_Previews: PreviewProvider {
    static var previews: some View {
        Resturant_Information()
    }
}
#endif

struct ResturantTopBar: View {
    var body: some View {
        HStack{
            Image(systemName:"arrowtriangle.down")
            Spacer()
            Image(systemName:"square.and.arrow.up")
                .padding(.trailing,15)
            Image(systemName:"bookmark")
                .padding(.trailing, 15)
            Image(systemName:"magnifyingglass")
                .padding(.trailing, 15)
        }.padding()
    }
}
