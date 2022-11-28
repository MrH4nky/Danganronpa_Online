//
//  Ext + UIViewContr.swift
//  DanganronpaOnline
//
//  Created by Eugene Heat on 24.11.2022.
//

import UIKit

extension UIViewController{
    func createCustomNavigationBar(){
        navigationController?.navigationBar.barTintColor = UIColor(red: 102, green: 102, blue: 102, alpha: 1)
    }
    
    func createCustomTitleView(pageName: String) -> UIView{
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 41)
        let nameLabel = UILabel()
        nameLabel.text = pageName
        nameLabel.frame = CGRect(x: 0, y: 0, width: 140, height: 41)
        nameLabel.textColor = .systemGreen
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        
        view.addConstraint((NSLayoutConstraint(item: nameLabel, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)))
        view.addConstraint((NSLayoutConstraint(item: nameLabel, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)))
        view.addSubview(nameLabel)
        
        return view
    }
    
    func createCustomBtn (imageName: String, selector: Selector) -> UIBarButtonItem{
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: imageName)?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .systemBlue
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
        
    }
}
