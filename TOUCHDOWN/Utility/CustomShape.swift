//
//  CustomShape.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 13/11/2021.
//

import SwiftUI

struct CustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // creates curved line segments on top left and top right corner. UI bezier curve class. Specify custom path that can be used later.
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
            
        return Path(path.cgPath)

        }
    
    }




    // MARK: - PREVIEW
struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
