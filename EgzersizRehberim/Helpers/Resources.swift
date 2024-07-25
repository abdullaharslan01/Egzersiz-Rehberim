//
//  Resources.swift
//  EgzersizRehberim
//
//  Created by abdullah on 24.07.2024.
//

import UIKit

enum Resources {
        
    enum Colors{
        static let active     = UIColor(hex: "#437BFE")
        static let inactive   = UIColor(hex: "#929DA5")
        static let seperator  = UIColor(hex: "#E8ECEF")
        static let titleGray  = UIColor(hex: "#545C77")
        static let background = UIColor(hex: "#F8F9F9")
    }
    
    enum Strings {
        enum TabBar {
            static let overView = "Overview"
            static let session  = "Session"
            static let progress = "Progress"
            static let settigns = "Settings"
        }
        
        enum NavBarTitles {
            static let session  = "High Intensity Cardio"
            static let progress = "Workout Progress"
        }
        
        enum NavBarButtonTitles {
            static let pause  = "Pause"
            static let finish = "Finish"
            static let export = "Export"
            static let details = "Details"
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
    
    enum  Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }

}
