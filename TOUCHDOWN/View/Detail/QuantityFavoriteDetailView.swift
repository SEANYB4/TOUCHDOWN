//
//  QuantityFavoriteDetailView.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 13/11/2021.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
        // MARK: - PROPERTY
    
    @State private var counter: Int = 0
    
    
    
        // MARK: - BODY
    
    var body: some View {
        
        
        
        
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                
                if counter > 0 {
                    
                    counter -= 1
                    
                }
                
                
            }, label: {
                
                Image(systemName: "minus.circle")
            
            }) //: BUTTON
            
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
    
            Button(action: {
                
                if counter < 100 {
                    
                    counter += 1
                }
                
            }, label: {
                
                Image(systemName: "plus.circle")
            
            }) //: BUTTON
            
            Spacer()
            
            
            Button(action: {}, label: {
                
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
                
            })
            
        }) //: HSTACK
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    
    
    
    }
}




    // MARK: - PREVIEW

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
