//
//  FeaturedTabView.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 08/11/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                
                FeatureditemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        
        
    } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
}
    
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}

