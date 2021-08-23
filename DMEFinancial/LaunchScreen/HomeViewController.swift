//
//  HomeViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class HomeViewController: UIViewController {
    
        lazy var welcomeLabel : UILabel = {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
            label.text = "Welcome!"
            label.font = UIFont(name: "MalayalamSangamMN-Bold", size: 24)
            label.textAlignment = .center
            label.textColor = .white
            label.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
            label.translatesAutoresizingMaskIntoConstraints = false
    
            return label
    
    
    
        }()
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(welcomeLabel)
        setLabelConstraints()
        view.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
    }
    
        func setLabelConstraints() {
            welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                welcomeLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
    
    
            ])
        }
    


}
