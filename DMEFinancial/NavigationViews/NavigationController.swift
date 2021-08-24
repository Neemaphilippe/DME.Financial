//
//  NavigationController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavBar()

        
    }
    

    private func setUpNavBar(){
        navigationBar.tintColor = .black
        navigationBar.barTintColor = .black 
        let textAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.black,
            NSAttributedString.Key.font : UIFont(name: "Times New Roman", size: 15)!] as [NSAttributedString.Key : Any]
        navigationBar.titleTextAttributes = textAttributes
    }
    

}
