//
//  UIScreen+FFCameraLocation.swift
//  FFCameraLocation
//
//  Created on 5/10/19.
//  Copyright © 2019 Eric Reedy. All rights reserved.
//

import UIKit

public
extension UIScreen {
    
    /// Returns the offset of the camera (in mm) from the center of the screen edge to which it is aligned.
    ///
    static var cameraAlignmentOffset_inMillimeters: CGPoint? {
        
        // eg:      _____________________________    <- Top of device
        //         /                +x           \
        //         |           +y |----O camera  |
        //         | _____________|_____________ |   <- Top of screen
        //         | |            ^            | |
        //         | |    center of screen     | |
        //         | |                         | |      Function returns (x: x, y: y)
        //
        
        // Note: These values were collected during a single trip to an apple store with a freehand pair of callipers and associate permission.
        //       I do not expect these values to be 100.0% accurate, but should be quite close.  If you're able to improve or expand these values,
        //       please open a pull request so that everyone can benefit from those changes.  Thank you!
        
        switch UIDevice.modelIdentifier {
            case "iPhone10,3", "iPhone10,6":                 return .init(x: 6.50, y: -1.62) // iPhone X
            case "iPhone11,8":                               return .init(x: 6.77, y: -1.67) // iPhone XR
            case "iPhone11,2":                               return .init(x: 7.26, y: -1.81) // iPhone XS
            case "iPhone11,4", "iPhone11,6":                 return .init(x: 7.18, y: -1.62) // iPhone XS Max
            case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4": return .init(x: 0.00, y:  4.26) // iPad Pro (11 inch, 1st generation)
            case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8": return .init(x: 0.00, y:  4.53) // iPad Pro (12.9 inch, 3rd generation)
            default:                                         return nil
        }
    }
    
    /// Returns the offset of the camera (in mm) from the center of the entire screen.
    ///
    static var cameraScreenCenterOffset_inMillimeters: CGPoint {
        
        guard
        let offset = cameraAlignmentOffset_inMillimeters
        else { return .zero }
        
        let screenSize_inMillimeters = UIScreen.dimensions_inMillimeters
        return CGPoint(x: offset.x, y: -screenSize_inMillimeters.height/2 - offset.y)
    }
    
    /// Returns cameraScreenCenterOffset_inMillimeters converted to Meters.
    ///
    static var cameraScreenCenterOffset_inMeters: CGPoint {
        let offset_inMillimeters = self.cameraScreenCenterOffset_inMillimeters
        return CGPoint(x: offset_inMillimeters.x / 1000, y: offset_inMillimeters.y / 1000)
    }
}

public
extension UIScreen {
    
    /// Returns UIScreen.dimensionInCentimeters converted to Millimeters.
    ///
    static var dimensions_inMillimeters: CGSize {
        let screenSize_inCentimeters = UIScreen.dimensionInCentimeters ?? .zero
        return CGSize(width: screenSize_inCentimeters.width * 10, height: screenSize_inCentimeters.height * 10)
    }
}
