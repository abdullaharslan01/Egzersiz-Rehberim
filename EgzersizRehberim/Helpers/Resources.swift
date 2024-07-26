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
        static let secondary  = UIColor(hex: "#F0F3FF")
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
            static let overview = "Overview"
            static let settigns = "Settigns"
        }
        
        enum Session {
            static let pause  = "Pause"
            static let finish = "Finish"

        }
        
        
        enum Overview{
            static let allWorkoutsButton = "All Workouts"
        }

        
        enum Progress{
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
        
        enum Common {
            static let downArrow = UIImage(systemName: "chevron.down")
            static let add       = UIImage(systemName: "plus.circle.fill")
        }
        
    }
    
    enum  Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }

}
