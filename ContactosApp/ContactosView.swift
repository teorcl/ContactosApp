//
//  ContactosView.swift
//  ContactosApp
//
//  Created by Teodoro Calle Lara on 6/05/23.
//

import UIKit

class ContactosView: UIView {
    
    private lazy var tituloVista: UILabel = {
       let titulo = UILabel()
        titulo.text = "Contactos"
        titulo.font = .systemFont(ofSize: 30)
        titulo.textAlignment = .center
        return titulo
    }()
      
    lazy var tableViewContactos: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.delegate = self
        table.register(ContactoCell.self, forCellReuseIdentifier: "\(ContactoCell.self)")
        return table
    }()
    
    required init() {
        super.init(frame: CGRect.zero)
        backgroundColor = .white
        agregarVistas()
        configurarConstraints()
        //tableViewContactos.reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func agregarVistas(){
        self.addSubview(tituloVista)
        self.addSubview(tableViewContactos)
    }
    
    private func configurarConstraints(){
        tituloTablaConstraint()
        tableViewContactosConstraints()
    }
    
    private func tituloTablaConstraint() {
        tituloVista.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloVista.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            tituloVista.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            tituloVista.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
        ])
    }
    
    private func tableViewContactosConstraints() {
        tableViewContactos.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableViewContactos.topAnchor.constraint(equalTo: tituloVista.bottomAnchor, constant: 10),
            tableViewContactos.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewContactos.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewContactos.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
       
}

extension ContactosView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactoAPI.obtenerContactos().count
    }
    
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ContactoCell.self)", for: indexPath) as? ContactoCell else {
            return UITableViewCell()
        }
        
        let listaDeContactos = ContactoAPI.obtenerContactos()
        let contacto = listaDeContactos[indexPath.row]
        
        cell.setData(contacto)
        //cell.accessoryType = .detailButton
        
        return cell
    }
    
    
}
