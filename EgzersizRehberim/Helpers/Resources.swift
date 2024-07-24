//
//  Resources.swift
//  EgzersizRehberim
//
//  Created by abdullah on 24.07.2024.
//

import UIKit

enum Resources {
        
    enum Colors{
        static let active = UIColor(hex: "#437BFE")
        static let inactive = UIColor(hex: "#929DA5")
        static let seperator = UIColor(hex: "#E8CEF")
    }
    
    enum Strings {
        enum TabBar {
            static let overView = "Overview"
            static let session  = "Session"
            static let progress = "Progress"
            static let settigns = "Settings"
        }
    }
    
    
    enum Images {
        enum TabBar {
            static let overView = UIImage(systemName: "house")
            static let session  = UIImage(systemName: "alarm")
            static let progress = UIImage(systemName: "chart.bar")
            static let settigns = UIImage(systemName: "gear")
        }
    }

}
