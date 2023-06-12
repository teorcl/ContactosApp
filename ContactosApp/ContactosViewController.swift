//
//  ContactosViewController.swift
//  ContactosApp
//
//  Created by Teodoro Calle Lara on 5/05/23.
//

import UIKit

class ContactosViewController: UIViewController{
    
    private var contactosView: ContactosView {
        view as! ContactosView
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //self.view = contactosView
        contactosViewConstrains()
    
    }
    
    override func loadView() {
        self.view = ContactosView()
        
    }
    
    private func contactosViewConstrains(){
        contactosView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactosView.topAnchor.constraint(equalTo: view.topAnchor),
            contactosView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contactosView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contactosView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
}
