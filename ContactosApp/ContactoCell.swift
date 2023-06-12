//
//  ContactoCell.swift
//  ContactosApp
//
//  Created by Teodoro Calle Lara on 11/05/23.
//

import UIKit

class ContactoCell: UITableViewCell {
    
    /*private lazy var profileImageView:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 35
        image.clipsToBounds = true
        return image
    }()*/
    
    private lazy var userNameLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.textColor =  UIColor(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return label
    }()
    
   
    
    private lazy var descriptionLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.backgroundColor =  UIColor(red: 0.2431372549, green: 0.7647058824, blue: 0.8392156863, alpha: 1)
        label.numberOfLines = 0
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        return label
    }()
    
    private lazy var containerView:UIView = {
        let view = UIView()
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var countryImageView:UIImageView = {
           let img = UIImageView()
           img.contentMode = .scaleAspectFill
           img.layer.cornerRadius = 13
           img.clipsToBounds = true
           return img
       }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setUpConstraints()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setContainerView(){
        self.containerView.addSubview(userNameLabel)
        self.containerView.addSubview(descriptionLabel)
    }

    private func setupView(){
        setContainerView()
        self.contentView.addSubview(containerView)
        self.contentView.addSubview(countryImageView)
        
    }
    
    private func setUpConstraints(){
        containerViewConstraints()
        userNameLabelConstraints()
        descriptionLabelConstraints()
        countryIVConstraints()
    }
    
    private func userNameLabelConstraints(){
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor),
            userNameLabel.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor),
            userNameLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor),
        ])
    }
    
    private func descriptionLabelConstraints(){
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.userNameLabel.bottomAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor, constant: -10),
            descriptionLabel.heightAnchor.constraint(equalToConstant:16),
        ])
    }
    
    private func containerViewConstraints(){
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //containerView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant:10),
            containerView.trailingAnchor.constraint(equalTo:self.countryImageView.leadingAnchor, constant: -10),
            //containerView.heightAnchor.constraint(equalToConstant:80),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
        ])
    }
    
    private func countryIVConstraints(){
        countryImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countryImageView.widthAnchor.constraint(equalToConstant:26),
            countryImageView.heightAnchor.constraint(equalToConstant:26),
            countryImageView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-20),
            countryImageView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor),
        ])
    }
    
    func setData(_ contacto: Contacto ){
        descriptionLabel.text = contacto.profesion
        userNameLabel.text = contacto.nombre
        countryImageView.image = UIImage(named: contacto.pais!)
    }
}

/*
 La vista contentView es una subvista especial en la que se deben agregar los elementos visuales que se mostrarán dentro de una celda. Esta vista se encuentra dentro de la vista principal de la celda y está diseñada para contener los componentes visuales personalizados que se desean mostrar en cada celda.
 */
