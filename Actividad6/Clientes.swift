//
//  Clientes.swift
//  Actividad6
//
//  Created by Miguel Fernandez on 02-09-15.
//  Copyright (c) 2015 Miguel Fernandez. All rights reserved.
//

import Foundation
 public class Clientes{
    
    // propiedades del los clientes
    private var nombre_cliente : String
    private var direccion : String
    
    // iniciacion
    public init (nombre_cliente : String,direccion: String){
        self.nombre_cliente = nombre_cliente
        self.direccion = direccion
        
    }
    
    //duvuelve el nombre
    func nombre_cli()->String{
        return nombre_cliente
    }
    
    // devuelve la direccion
    func direcc()->String{
        return direccion
    }
    
}

