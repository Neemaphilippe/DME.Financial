//
//  MainMenuViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    // Buttons
    // aboutUs
    // services offered
    
    lazy var aboutUsButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("About Us", for: .normal)
        button.addTarget(self, action: #selector(aboutUsButtonPressed), for: .touchUpInside)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = .red

        return button
    }()

    lazy var servicesButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("Services ", for: .normal)
        button.addTarget(self, action: #selector(servicesButtonPressed), for: .touchUpInside)
        button.backgroundColor = .red
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    lazy var scheduleAppointmentButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("Schedule an Appointment", for: .normal)
        button.addTarget(self, action: #selector(appointmentButtonPressed), for: .touchUpInside)
        button.backgroundColor = .red
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
        view.addSubview(aboutUsButton)
        view.addSubview(servicesButton)
        view.addSubview(scheduleAppointmentButton)
        constrainButtonsStackView()
        constrainServicesOfferedButton()
        constrainAppointmentButton()

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
    
    func constrainServicesOfferedButton() {
        
    }
    
    func constrainAppointmentButton() {
        
    }

    
   

}
