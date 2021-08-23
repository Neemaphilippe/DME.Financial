//
//  LaunchScreenViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    //    lazy var welcomeLabel : UILabel = {
    //        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    //        label.text = "WELCOME"
    //        label.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 30)
    //        label.textAlignment = .center
    //        label.textColor = .white
    //        label.backgroundColor = #colorLiteral(red: 0.03614688292, green: 0.09370104223, blue: 0.5110729933, alpha: 1)
    //        label.translatesAutoresizingMaskIntoConstraints = false
    //
    //        return label
    //
    //
    //
    //    }()
    
    lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "DMELogo")
        logo.layer.zPosition = 1
        
        return logo
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
        // self.view.addSubview(welcomeLabel)
        // setLabelConstraints()
        self.view.addSubview(logoImage)
        setLogoConstraints()
        animate()
        
        
        
        
    }
    
    //    func setLabelConstraints() {
    //        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
    //        NSLayoutConstraint.activate([
    //            welcomeLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: (self.view.bounds.height / 8)),
    //            welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
    //
    //
    //        ])
    //    }
    
    func setLogoConstraints() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 125),
            logoImage.heightAnchor.constraint(equalToConstant: 125)
            
            
        ])
        
        
    }
    
    func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 2
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.logoImage.frame = CGRect(
                x: -(diffX/2),
                y: diffY/2,
                width: size,
                height: size
            
            )
            
    
            
        })
        
        
    }
     
    
}
