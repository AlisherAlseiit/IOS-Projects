//
//  Fonts.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 11.08.2021.
//

import Foundation
import SwiftUI

/*
 SF Pro Display
 - SFProDisplay-Regular
 - SFProDisplay-Semibold
 - SFProDisplay-Bold
 SF Pro Text
 - SFProText-Regular
 */
extension Font {
    
    static var title: Font {
        
        Font.custom("SFProDisplay-Bold", size: 28)
    }
    
    static var subheadline: Font {
        Font.custom("SFProDisplay-Semibold", size: 14)
    }
    
    static var caption: Font {
        
        Font.custom("SFProText-Regular", size: 10)
    }
    
    static var metricNumber: Font {
        
        Font.custom("SFProDisplay-Bold", size: 14)
    }
    
    static var metricCaption: Font {
        
        Font.custom("SFProText-Regular", size: 9)
    }
    
   
}
