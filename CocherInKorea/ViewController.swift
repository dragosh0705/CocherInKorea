//
//  ViewController.swift
//  CocherInKorea
//
//  Created by 최영우 on 7/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var locationButton : UIButton = {
        var button = UIButton()
        button.setTitle("모든 지역 ⌵", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var mySavedButton : UIButton = {
        var button = UIButton()
        button.setTitle("나의 저장", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var alarmButton : UIButton = {
        var button = UIButton()
        button.setTitle("알람", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var searchBar : UISearchBar = { // searchBar 안보이는 문제부터 시작해야 함
        var search = UISearchBar()
        search.placeholder = "검색"
        search.translatesAutoresizingMaskIntoConstraints = false
       
        return search
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(locationButton)
        self.view.addSubview(mySavedButton)
        self.view.addSubview(alarmButton)
        self.view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            locationButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            locationButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
            
        ])
        
        NSLayoutConstraint.activate([
            mySavedButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            mySavedButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 260)
        ])
        
        NSLayoutConstraint.activate([
            alarmButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            alarmButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 350)
        ])
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 180),
            searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        ])
    }
    
}
