//
//  Usuarios.swift
//  Actividad6
//
//  Created by Miguel Fernandez on 01-09-15.
//  Copyright (c) 2015 Miguel Fernandez. All rights reserved.
//

import Foundation
public class Usuarios {
    
    // propiedades de los usuarios
     var nombre : String
     var clave : String
    var cliente : [(cliente:Clientes, telefono: Int)]
    
    // iniciacion
   public  init (nombre: String, clave: String, cliente: Array<(cliente:Clientes, telefono: Int)>) {
        self.nombre = nombre
        self.clave = clave
        self.cliente = cliente
    }
    
    // devuelve el nombre
    func getName()->String {
        return nombre
        
    }
    
    //devuelve la clave
    func getClave()->String{
        return clave
    }
    
    // devuelve al cliente 
    func getcliente()-> Array<(cliente:Clientes, telefono: Int)>{
        return cliente
    }
    
    
    
    
  /*  func  validarLogin(String login,String contrasena)
    {
       Usuario usuario;
    ArrayList<Usuario> usuarios=listaUsuarios();
    int largo= usuarios.size();
    for(int i=0;i <largo;i++)
    {
    usuario=usuarios.get(i);
    if(usuario.login_usuario.equals(login)&& usuario.contrasena.equals(contrasena))
    {
				return true;
    }
    }
    
    return false;
    }*/
    
}