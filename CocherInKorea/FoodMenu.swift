//
//  FoodMenu.swift
//  CocherInKorea
//
//  Created by 최영우 on 7/9/23.
//

import Foundation
import UIKit

class FoodMenu: UIViewController {
    
    private var AppName: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.text = "Cocher in Korea"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(AppName)
        
        NSLayoutConstraint.activate([
            AppName.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            AppName.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50)
        ])
    }
    
    
}
