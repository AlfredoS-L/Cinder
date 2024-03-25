//
//  SizeConstants.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 3/24/24.
//

import Foundation
import SwiftUI

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 1.2
    }
    
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
