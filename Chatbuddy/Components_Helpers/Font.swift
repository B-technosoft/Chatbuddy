//
//  Font.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import Foundation
import SwiftUI

//MARK: Fonts Thats Used On App Design 
extension Font {
    
    
    public static var body: Font{
        return Font.custom("Spectral-Regular", size: 14)
    }
    public static var button: Font{
        return Font.custom("Spectral-SemiBold", size: 14)
    }
    public static var caption: Font{
        return Font.custom("Spectral-Regular", size: 10)
    }
    public static var tabBar: Font{
        return Font.custom("Spectral-Regular", size: 12)
    }
    public static var settings: Font{
        return Font.custom("Spectral-Regular", size: 16)
    }
    public static var title: Font{
        return Font.custom("Spectral-Bold", size: 20)
    }
    public static var pageTitle: Font{
        return Font.custom("Spectral-SemiBold", size: 30)
    }
    public static var chatHeading: Font{
        return Font.custom("Spectral-SemiBold", size: 15)
    }
}
