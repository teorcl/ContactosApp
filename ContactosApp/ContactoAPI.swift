//
//  ContactoAPI.swift
//  ContactosApp
//
//  Created by Teodoro Calle Lara on 5/05/23.
//

import Foundation

class ContactoAPI {
    static func obtenerContactos() -> [Contacto] {
        let contactos = [
            Contacto(nombre: "Kelly Goodwin", profesion: "Designer", pais: "bo"),
            Contacto(nombre: "Mohammad Hussain", profesion: "SEO Specialist", pais: "be"),
            Contacto(nombre: "John Young", profesion: "Interactive Designer", pais: "af"),
            Contacto(nombre: "Tamilarasi Mohan", profesion: "Architect", pais: "al"),
            Contacto(nombre: "Kim Yu", profesion: "Economist", pais: "br"),
            Contacto(nombre: "Derek Fowler", profesion: "Web Strategist", pais: "ar"),
            Contacto(nombre: "Shreya Nithin", profesion: "Product Designer", pais: "az"),
            Contacto(nombre: "Emily Adams", profesion: "Editor", pais: "bo"),
            Contacto(nombre: "Aabidah Amal", profesion: "Creative Director", pais: "au")
        ]
        
        return contactos
    }
}
