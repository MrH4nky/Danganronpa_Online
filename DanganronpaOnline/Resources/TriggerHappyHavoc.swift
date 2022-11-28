//
//  TriggerHappyHavoc.swift
//  DanganronpaOnline
//
//  Created by Eugene Heat on 21.11.2022.
//

import UIKit

enum THH_Student{
    case Makoto
    case Byakuya
    case Leon
    case Yasuhiro
    case Kiyotaka
    case Mondo
    case Hifumi
    case Chihiro
    case Sayaka
    case Kirigiri
    case Toko
    case Sakura
    case Celestia
    case Aoi
    case Mukuro
    case Junko
}

extension THH_Student{
    var pixelArt: UIImage{
        switch self{
        case .Makoto: return UIImage(named: "Makoto")!
        case .Byakuya: return UIImage(named: "Byakuya")!
        case .Leon: return UIImage(named: "Leon")!
        case .Yasuhiro: return UIImage(named: "Yasuhiro")!
        case .Kiyotaka: return UIImage(named: "Kiyotaka")!
        case .Mondo: return UIImage(named: "Mondo")!
        case .Hifumi: return UIImage(named: "Hifumi")!
        case .Chihiro: return UIImage(named: "Chihiro")!
        case .Sayaka: return UIImage(named: "Sayaka")!
        case .Kirigiri: return UIImage(named: "Kirigiri")!
        case .Toko: return UIImage(named: "Toko")!
        case .Sakura: return UIImage(named: "Sakura")!
        case .Celestia: return UIImage(named: "Celestia")!
        case .Aoi: return UIImage(named: "Aoi")!
        case .Mukuro: return UIImage(named: "Mukuro")!
        case .Junko: return UIImage(named: "Junko")!
            
            
            
        }
        
    }
}
