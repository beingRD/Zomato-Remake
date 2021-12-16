//
//  DineTab.swift
//  Zomato
//
//  Created by Dev, Rishabh on 16/12/21.
//  Copyright © 2021 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct DineTab: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("dine")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
            }
            .navigationTitle("Dine")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
