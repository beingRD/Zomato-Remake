//
//  TabController.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct TabController: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName:"house")
                    Text("Order")
                }.tag(0)
                
            DineTab()
                .tabItem{
                    Image(systemName: "arrowshape.zigzag.forward")
                    Text("Dine")
                }.tag(1)
            ProTab()
                .tabItem{
                    Image(systemName:"star")
                    Text("Pro")
                }
                .tag(2)
//            Text("Search Tab")
//                .tabItem{
//                    Image(systemName: "magnifyingglass")
//                    Text("Search")
//                }.tag(3)
            AccountTab()
                .tabItem{
                    Image(systemName:"person")
                    Text("Account")
                } .tag(3)
        }.accentColor(.cranberry_red)
    }
}
#if DEBUG
struct TabController_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
#endif
