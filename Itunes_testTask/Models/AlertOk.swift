//
//  AlertOk.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 15.03.2023.
//

import UIKit

extension UIViewController {
    
    func alertOk(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
       
        let ok = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
