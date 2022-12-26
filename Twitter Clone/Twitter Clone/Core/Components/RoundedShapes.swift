//
//  RoundedShapes.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/19/22.
//

import SwiftUI

struct Roundedshape: Shape {
    var corrners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corrners, cornerRadii: CGSize(width: 200, height: 300))
        return Path(path.cgPath)
    }
}
