//
//  Menu.swift
//  DanganronpaOnline
//
//  Created by Eugene Heat on 21.11.2022.
//

import UIKit

enum MenuElement{
    case Characters
    case Episodes
    case Locations
}

extension MenuElement{
    var backgroundPic: UIImage{
        switch self
        {
        case .Characters: return UIImage(named: "characters")!.resizeImageTo(size: resizeScale)
        case .Episodes: return UIImage(named: "episodes")!.resizeImageTo(size: resizeScale)
        case .Locations: return UIImage(named: "locations")!.resizeImageTo(size: resizeScale)
        }
    }
}

extension MenuElement{
    var name: String{
        switch self
        {
        case .Characters: return "Characters"
        case .Episodes: return "Episodes"
        case .Locations: return "Locations"
        }
    }
    
}


