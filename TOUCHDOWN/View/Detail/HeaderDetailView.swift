//
//  HeaderDetailView.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 09/11/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    
        // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    
    
        // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
            
        }) //: VSTACK
            .foregroundColor(.white)
    }
}



    // MARK: - PREVIEW

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
