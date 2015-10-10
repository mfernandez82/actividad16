//
//  ViewController.swift
//  Actividad6
//
//  Created by Miguel Fernandez on 01-09-15.
//  Copyright (c) 2015 Miguel Fernandez. All rights reserved.
//

//actividad 16

import UIKit	

class ViewController: UIViewController {

    @IBOutlet weak var usuarioTxt: UITextField!
    @IBOutlet weak var claveText: UITextField!
    
    
    @IBOutlet weak var TextField: UITextView!
    // definiendo arrays para ingresar los usuarios y los clientes
    var usuarios = [Usuarios]()
    var clientes = [Clientes]()
    
    
    // creando los clientes, que despues se asociaran al usuario que se logea
    let juan = Clientes(nombre_cliente: "juan carlos", direccion: "la costa 40")
    let gustavo =  Clientes(nombre_cliente: "Gustavo fladez", direccion: "ramirez 1050")
    let victor = Clientes(nombre_cliente: "Victor inzunza", direccion: "Bilbao 201")
    let jose = Clientes(nombre_cliente: "jose asenjo", direccion: "matta 5020")
    let sammy = Clientes(nombre_cliente: "Sammanta ricouz", direccion: "errazuriz 1020")
    let marta = Clientes(nombre_cliente: "Marta rizz", direccion: "costa 40")
    let jorge =  Clientes(nombre_cliente: "jorge gomez", direccion: "no tengo idea")
    let carlos =  Clientes(nombre_cliente: "carlos santana", direccion: "ddddasd ")
    let paola = Clientes(nombre_cliente: "paola sanchez", direccion: "repulci 1050")
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // cargando los usuarios y los respectivos clientes asociados a ese usuario
        usuarios += [Usuarios(nombre: "user1", clave: "123", cliente: [(juan,12333), (victor,1222), (sammy,375673467), (marta,88877),(carlos,9999)]),Usuarios(nombre: "user2", clave: "234", cliente: [(gustavo,12333), (jose,333), (jorge,777),(paola,4444)])]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func MostrarMensaje(mensaje:String){
        var alerta=UIAlertController(title: "Error", message: mensaje, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"OK",style:UIAlertActionStyle.Default, handler:nil);
        alerta.addAction(okAction);
        self.presentViewController(alerta, animated: true, completion: nil);
    }
    
    @IBAction func limpiar(sender: AnyObject) {
        usuarioTxt.text = ""
        claveText.text = ""
        
    }
    
    
    

    @IBAction func BotonIngresar(sender: AnyObject) {
        // variable para definir si el usuario esta bien logeado
        
        if usuarioTxt.text.isEmpty || claveText.text.isEmpty{
            MostrarMensaje("Faltan datos por ingresar!!")
            return
        }
        
        var usuarioValido:Bool
        usuarioValido = false
        
        
        //ciclo para revisar tanto el usuario y su respectiva contraseña
         for revisar in usuarios{
            if revisar.getName() == usuarioTxt.text && revisar.getClave() == claveText.text{
                // si corresponden, quiere decir que tanto el usuario y la clave corresponden
                usuarioValido=true
                
            }
            
                
                // se muestra cuando el usuario o la clave no son validas.
           
            
        }
        
        
        
        // variable para ir dejando los clientes que le corresponden al usuario logeado correctamente
        var datos_clientes : String
        datos_clientes=""
        
        //mostrar los clientes si el usuario es valido
        if usuarioValido==true{
            // ciclo para revisar los datos del usuario
            for revisar in usuarios{
               // revisar si el texto ingresado es igual de la clase, se mostraran el detalle de los clientes asociados a usuario
                if revisar.getName() == usuarioTxt.text{
                    let nextView = self.storyboard?.instantiateViewControllerWithIdentifier("mimenu") as! MenuViewController
                    
                    self.navigationController?.showViewController(nextView, sender: sender)
                    datos_clientes = "LISTADO DE LOS CLIENTES DEL USUARIO \(revisar.getName()) \n \n"
                    for detalle in revisar.getcliente(){
                        datos_clientes +=  "\(detalle.cliente.nombre_cli()) FONO: \(detalle.telefono) \(detalle.cliente.direcc()) \n" // println("\(detalle.cliente.nombre_cli()))" //+ (detalle.telefono)
                    }
                    // agrego los datos de la variable al TextField
                    TextField.text = datos_clientes
                }
            }
        }
            // revisar aqui, ya que al limpiar tambien se muestra el siguiente mensaje
        else
        {
            MostrarMensaje("usuario y/o contraseña no son correctos")
            
        }
    }
    
   }

