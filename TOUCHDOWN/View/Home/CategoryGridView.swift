//
//  CategoryGirdView.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 09/11/2021.
//

import SwiftUI

struct CategoryGridView: View {
    
        // MARK: - PROPERTY
    
    
    
    
    
        // MARK: - BODY
    
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                
                Section(
                    
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: GRID
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }) //: SCROLL
    }
}



    // MARK: - PREVIEW

struct CategoryGirdView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
        
    }
}
