//
//  Resources.swift
//  EgzersizRehberim
//
//  Created by Abdullah on 24.07.2024.
//

import UIKit

enum Resources {
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview:
                    return UIImage(systemName: "house")
                case .session:
                    return UIImage(systemName: "alarm")
                case .progress:
                    return UIImage(systemName: "chart.bar")
                case .settings:
                    return UIImage(systemName: "gear")
                }
            }
        }
        
        enum Common {
            static let downArrow = UIImage(systemName: "chevron.down")
            static let add = UIImage(systemName: "plus.circle.fill")
        }
    }
    
    enum Colors {
        static let active = UIColor(hex: "#437BFE")
        static let inactive = UIColor(hex: "#929DA5")
        static let separator = UIColor(hex: "#E8ECEF")
        static let titleGray = UIColor(hex: "#545C77")
        static let background = UIColor(hex: "#F8F9F9")
        static let secondary = UIColor(hex: "#F0F3FF")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview:
                    return "Overview"
                case .session:
                    return "Session"
                case .progress:
                    return "Progress"
                case .settings:
                    return "Settings"
                }
            }
        }
        
        enum NavBarTitles {
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let overview = "Overview"
            static let settings = "Settings" 
        }
        
        enum Session {
            static let pause = "Pause"
            static let finish = "Finish"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum Progress {
            static let export = "Export"
            static let details = "Details"
        }
    }
}
