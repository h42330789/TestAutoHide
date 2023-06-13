//
//  ViewController.swift
//  HelloAutoHideKeyboard2
//
//  Created by MacBook Pro on 6/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ges = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(ges)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }

    @IBAction func changeRootVC(_ sender: Any) {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() else {
            return
        }
        guard let window = keyWindow else {
            return
        }
        vc.view.backgroundColor = .green
        let nav = UINavigationController(rootViewController: vc)
        window.rootViewController = nav
    }
    
    @IBAction func changeVCAndMake(_ sender: Any) {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() else {
            return
        }
        guard let window = keyWindow else {
            return
        }
        vc.view.backgroundColor = .red
        let nav = UINavigationController(rootViewController: vc)
        window.rootViewController = nav
        window.makeKeyAndVisible()
    }
    
    public var keyWindow: UIWindow? {
        
        if let window = UIApplication.shared.delegate?.window {
            return window
        } else{
            return nil
        }
    }
}
