//
//  ProTab.swift
//  Zomato
//
//  Created by Dev, Rishabh on 15/12/21.
//  Copyright © 2021 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct ProTab: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("pro")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
            }
            .navigationTitle("Pro")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
