//
//  AccountTab.swift
//  Zomato
//
//  Created by Dev, Rishabh on 16/12/21.
//  Copyright © 2021 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct AccountTab: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("account")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
            }
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
