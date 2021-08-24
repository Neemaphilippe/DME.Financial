//
//  AboutUsViewController.swift
//  DMEFinancial
//
//  Created by Neema on 8/23/21.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        self.navigationItem.title = NavBarTitle.aboutUs.rawValue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    
    @objc private func dismissSelf() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let sceneDelegate = windowScene.delegate as? SceneDelegate, let window = sceneDelegate.window
        else {return}
        UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            window.rootViewController = MainMenuViewController()
        }, completion: nil)
    }
    
    
}
