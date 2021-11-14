//
//  AddToCartDetailView.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 13/11/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    
        // MARK: - PROPERTY
    
    
    @EnvironmentObject var shop: Shop
    
    
    
    
    
        // MARK: - BODY
    
    var body: some View {
        
        
        
        Button(action: {
            feedback.impactOccurred()
            
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            
        }) //: BUTTON
            .padding(15)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                     )
            )
            .clipShape(Capsule())
    }
}






    // MARK: - PREVIEW

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
            
    }
}
