//
//  ContentView.swift
//  Zomato
//
//  Created by Rishabh Dev on 08/12/2021.
//  Copyright © 2021 Rishabh Dev. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical) {
                    LocationBar()
                    SliderSelect()
                    OfferCards()
                    SearchBar()
                    
//                    ResturantCards()

                    ForEach(0..<3) {item in
                        NavigationLink(destination:Text("Capizzi")){
                            ResturantCards()
                                .frame(width: UIScreen.main.bounds.width)
                                .padding(.bottom)
                        }
                        .buttonStyle(.plain)
                    }
//

                    Spacer()
                   
                    //                    .offset(y:-20)
                    
                    //PreviousOrders()
                    
                    //                    ForEach(0..<2) {item in
                    //                        NavigationLink(destination:Text("Capizzi")){
                    //                            ResturantCards()
                    //                                .padding()
                    //                            Rectangle()
                    //                                .frame(height:0.5)
                    //                                .foregroundColor(Color.gray)
                    //                        }
                    //                        .offset(y: -80)
                    //                        .buttonStyle(.plain)
                    //                    }
                                        PopularCusines()
                    //                        .offset(y: -80)
                
            }
//            .padding()
            .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-128)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}







#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
#endif

struct LocationBar: View {
    var body: some View {
        
        VStack(alignment:.leading){
            HStack{
                Image(systemName: "mappin")
                
                    .frame(width: 20, height: 20)
                Text("Your Current Location")
                    .foregroundColor(Color.gray)
                    .font(Font.system(size: 12))
            }
            
            Text("Vico Dei Venti")
                .font(Font.system(size: 17))
            Text("16, Napoli")
                .fontWeight(.light)
                .font(Font.system(size: 14))
            
        }.padding(40)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.15, alignment: .leading)
        
    }
}

struct SliderSelect: View {
    @State private var currentSelection = false
    let generator = UIImpactFeedbackGenerator()
    var body: some View {
        HStack() {
            VStack {
                HStack{
                    Text("Delivery")
                    Image(systemName:"car")
                    
                }.onTapGesture {
                    if self.currentSelection{
                        self.generator.impactOccurred()
                    }
                    self.currentSelection = false
                }
                Rectangle()
                    .frame(width:UIScreen.main.bounds.width/2,height:5)
                    .foregroundColor(self.currentSelection ? Color.clear:Color.cranberry_red)
            }
            
            VStack {
                HStack{
                    Text("Self Pickup")
                    Image(systemName:"bag")
                }.onTapGesture {
                    if self.currentSelection{
                        
                    }
                    else
                    {
                        self.generator.impactOccurred()
                    }
                    self.currentSelection = true
                }
                Rectangle()
                    .frame(width:UIScreen.main.bounds.width/2,height:5)
                    .foregroundColor(self.currentSelection ? Color.cranberry_red:Color.clear)
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.05)
      
    }
}

struct SearchBar: View {
    @State var newText : String = ""
    var body: some View {
        HStack {
            
            
            Image(systemName:"magnifyingglass")
                .foregroundColor(Color.gray)
                .padding(.leading, 34)
            TextField("Search for nearby restaurants..", text: $newText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: UIScreen.main.bounds.width*0.80)
            Spacer()
            Image(systemName:"slider.horizontal.3")
                .padding(.trailing, 34)
            
        }
        
    }
}
