//
//  Actividad6Tests.swift
//  Actividad6Tests
//
//  Created by Miguel Fernandez on 01-09-15.
//  Copyright (c) 2015 Miguel Fernandez. All rights reserved.
//

import UIKit
import XCTest
import Actividad6


class Actividad6Tests: XCTestCase {
    
   
    override func setUp() {
        super.setUp()
       // revisar_usuario()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func  revisar_usuario(){
  
        // creando un arreglo (revisar), en donde se guardaran los usuarios
         var revisar = [Usuarios]()
        //para crear clientes
        var clientes = [Clientes]()
        
        
        // creando los clientes, que despues se asociaran al usuario que se logea, solo para el caso de prueba
        let juan = Clientes(nombre_cliente: "juan carlos", direccion: "la costa 40")
        let gustavo =  Clientes(nombre_cliente: "Gustavo fladez", direccion: "ramirez 1050")
        let victor = Clientes(nombre_cliente: "Victor inzunza", direccion: "Bilbao 201")
        let jose = Clientes(nombre_cliente: "jose asenjo", direccion: "matta 5020")
        let sammy = Clientes(nombre_cliente: "Sammanta ricouz", direccion: "errazuriz 1020")
        let marta = Clientes(nombre_cliente: "Marta rizz", direccion: "costa 40")
        let jorge =  Clientes(nombre_cliente: "jorge gomez", direccion: "no tengo idea")
        let carlos =  Clientes(nombre_cliente: "carlos santana", direccion: "ddddasd ")
        let paola = Clientes(nombre_cliente: "paola sanchez", direccion: "repulci 1050")
        
        
        // guardando en un arreglo 10 usuarios, para su posterior ordenamiento
        revisar += [Usuarios(nombre: "user1", clave: "123", cliente: [(juan,12333), (victor,1222), (sammy,375673467), (marta,88877),(carlos,9999)]),Usuarios(nombre: "user2", clave: "234", cliente: [(gustavo,12333), (jose,333), (jorge,777),(paola,4444)]),
            Usuarios(nombre: "juan", clave: "juan", cliente: [(gustavo,12333)]),
            Usuarios(nombre: "victor", clave: "victor", cliente: [(victor,12333)]),
            Usuarios(nombre: "andres", clave: "andres", cliente: [(jose,12333)]),
            Usuarios(nombre: "marta", clave: "marta", cliente: [(sammy,12333)]),
            Usuarios(nombre: "bernardo", clave: "bernado", cliente: [(marta,12333)]),
            Usuarios(nombre: "carlos", clave: "carlos", cliente: [(paola,12333)]),
            Usuarios(nombre: "venito", clave: "venito", cliente: [(carlos,12333)]),
            Usuarios(nombre: "paola", clave: "paola", cliente: [(juan,12333)])
            
                  ]
        println(revisar)
       
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
   
    func testPerformanceOrdenar(arreglo: NSString){
        self.measureBlock(){
        // ordenando un arreglo utilizando el metodo dump
            revisar
            
        }
        
    }
    
    
}
