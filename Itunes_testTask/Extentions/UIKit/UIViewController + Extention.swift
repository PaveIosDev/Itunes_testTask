//
//  UIViewController + Extention.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 29.01.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomButton(selector: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
    }
}
