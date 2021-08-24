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
        button.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
        button.titleLabel?.font = UIFont(name: "MalayalamSangamMN-Bold", size: 24)
        return button
    }()

    lazy var servicesButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitle("Services ", for: .normal)
        button.addTarget(self, action: #selector(servicesButtonPressed), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
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
        button.backgroundColor = #colorLiteral(red: 0.102643542, green: 0.1917873919, blue: 0.3815593719, alpha: 1)
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
        
        
        self.navigationItem.title = NavBarTitle.main.rawValue 

    }
    
    @objc func aboutUsButtonPressed() {
        // segue to about us detail vc
        let aboutUsVC = AboutUsViewController()
        aboutUsVC.title = "About Us"
        
//        let navigationController = UINavigationController(rootViewController: aboutUsVC)
//        present(navigationController, animated: true)
//        navigationController.modalPresentationStyle = .fullScreen
        
//        navigationController.navigationBar.isTranslucent = false
//        navigationController.navigationBar.isHidden = true
//        navigationController.interactivePopGestureRecognizer?.isEnabled = false
        let navigationController = UINavigationController(rootViewController: aboutUsVC)
        navigationController.modalPresentationStyle = .fullScreen
//
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate, let window = sceneDelegate.window
            else {return}
        UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            window.rootViewController = navigationController
        }, completion: nil)
        
    }
    
    @objc func servicesButtonPressed() {
        // segue to services offered vc of table/collection view
        let servicesOfferedVC = ServicesOfferedViewController()
        servicesOfferedVC.title = "Services Offered"
        
        let navigationController = UINavigationController(rootViewController: servicesOfferedVC)
//        navigationController.navigationBar.isTranslucent = false
//        navigationController.navigationBar.isHidden = true
//        navigationController.interactivePopGestureRecognizer?.isEnabled = false
        navigationController.modalPresentationStyle = .fullScreen
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let sceneDelegate = windowScene.delegate as? SceneDelegate, let window = sceneDelegate.window
        else {return}
        UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            window.rootViewController = navigationController
        }, completion: nil)
        
        
    }
    
    @objc func appointmentButtonPressed() {
        let scheduleAppointment = ScheduleAppointmentViewController()
        
        let navigationController = UINavigationController(rootViewController: scheduleAppointment)
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.isHidden = true
        navigationController.interactivePopGestureRecognizer?.isEnabled = false
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let sceneDelegate = windowScene.delegate as? SceneDelegate, let window = sceneDelegate.window
        else {return}
        UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            window.rootViewController = navigationController
        }, completion: nil)
        
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
