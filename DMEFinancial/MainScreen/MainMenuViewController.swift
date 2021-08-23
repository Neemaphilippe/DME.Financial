//
//  MainMenuViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    
    lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "DMELogo")
        logo.layer.zPosition = 1
        
        return logo
        
    }()
    
    lazy var aboutUsButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("About Us", for: .normal)
        button.addTarget(self, action: #selector(aboutUsButtonPressed), for: .touchUpInside)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = #colorLiteral(red: 0.03614688292, green: 0.09370104223, blue: 0.5110729933, alpha: 1)
        button.titleLabel?.font = UIFont(name: "MalayalamSangamMN-Bold", size: 24)

        return button
    }()

    lazy var servicesButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("Services ", for: .normal)
        button.addTarget(self, action: #selector(servicesButtonPressed), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.03614688292, green: 0.09370104223, blue: 0.5110729933, alpha: 1)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.font = UIFont(name: "MalayalamSangamMN-Bold", size: 24)
        return button
    }()
    
    lazy var scheduleAppointmentButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("Schedule an Appointment", for: .normal)
        button.addTarget(self, action: #selector(appointmentButtonPressed), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.03614688292, green: 0.09370104223, blue: 0.5110729933, alpha: 1)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.font = UIFont(name: "MalayalamSangamMN-Bold", size: 24)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(logoImage)
        view.addSubview(aboutUsButton)
        view.addSubview(servicesButton)
        view.addSubview(scheduleAppointmentButton)
        constrainButtonsStackView()
        constrainLogo()

    }
    
    @objc func aboutUsButtonPressed() {
        // segue to about us detail vc
    }
    
    @objc func servicesButtonPressed() {
        // segue to servicesoffered vc of table/collection view
    }
    
    @objc func appointmentButtonPressed() {
        // segue to appointments/calendar
    }
    
    func constrainButtonsStackView() {
        let stackView = UIStackView(arrangedSubviews: [aboutUsButton, servicesButton, scheduleAppointmentButton])
        stackView.axis = .vertical
        stackView.spacing = 35
        stackView.distribution = .fillEqually
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 225),
            stackView.widthAnchor.constraint(equalToConstant: 225)
        
        
        
        
        ])
        
    }
    
    
    
    func constrainLogo() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            logoImage.widthAnchor.constraint(equalToConstant: 50),
            logoImage.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
        
        
    }
    
    
   
   

}
