//
//  Productos.swift
//  Actividad6
//
//  Created by Miguel Fernandez on 14-09-15.
//  Copyright (c) 2015 Miguel Fernandez. All rights reserved.
//

import Foundation

class Productos{
    
    // propiedades del los productos
    private var nombre_producto : String
    private var precio : Int
    
    // iniciacion
    init (nombre_producto : String, precio: Int){
        self.nombre_producto = nombre_producto
        self.precio    = precio
        
    }
    
    //duvuelve el nombre
    func nom_producto()->String{
        return nombre_producto
    }
    
    // devuelve la direccion
    func precio_prod()->Int{
        return precio
    }
    
}

