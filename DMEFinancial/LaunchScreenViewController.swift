//
//  LaunchScreenViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    lazy var welcomeLabel : UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        label.text = "WELCOME"
        label.textAlignment = .center
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
        
        
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.view.addSubview(welcomeLabel)
        setLogoConstraints()
        

        
    }
    
    func setLogoConstraints() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: (self.view.bounds.height / 8)),
            welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        
        
        ])
    }
    
        

   
}
