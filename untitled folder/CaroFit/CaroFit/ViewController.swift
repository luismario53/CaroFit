//
//  ViewController.swift
//  CaroFit
//
//  Created by labcisco on 15/11/18.
//  Copyright © 2018 labcisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate{
    
    var alimentos = [Alimento]()
    var currentlyAlimentos = [Alimento]()//Tablaactualizadades
    
    
    
    @IBOutlet weak var pickerView: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFood()
        setUpSearchBar()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setUpFood() {
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Amaranto",porcion:"1/4 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Arroz cocido",porcion:"1/4 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Arroz salvaje cocido",porcion:"1/4 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Avena en hojuelas cruda",porcion:"1/4 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Camote cocido",porcion:"70 gr"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Cuscus cocido",porcion:"1/2 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Elote",porcion:"1/2 pz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Elote enlatado",porcion:"1/3 tz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Galleta habanera",porcion:"4 pz"))
        alimentos.append(Alimento(tipo:"Cereal",nombre:"Galleta saladita",porcion:"3 tz"))
        
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Abulón fresco",porcion:"50gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Almeja fresca",porcion:"4pz"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Arrachera",porcion:"30gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Atún de lata fresco",porcion:"40gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Barbacoa",porcion:"40gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Bistec de res",porcion:"40gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Cabrito",porcion:"40gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Calamar",porcion:"50gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Camarón cocido",porcion:"40gr"))
        alimentos.append(Alimento(tipo:"Proteina",nombre:"Carne cuete",porcion:"40gr"))
        
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Agua de coco",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Arándanos deshidratados",porcion:"1/5tz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Arándanos frescos/blueberries",porcion:"1tz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Cereza/Cherry",porcion:"1tz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Chabacano",porcion:"4pz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Chirimoya",porcion:"1/3tz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruela morada",porcion:"3pz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruela pasa deshuesada",porcion:"3pz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruelas amarillas",porcion:"7pz"))
        alimentos.append(Alimento(tipo:"Fruta",nombre:"Durazno amarillo",porcion:"2pz"))
        
        alimentos.append(Alimento(tipo:"Libre",nombre:"Agua mineral",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Arroz de coliflor",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Café americano",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Caldo natural de camarón",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Caldo natural de pollo",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Caldo natural de res",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Caldo natural de vegetales",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Canela en polvo",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Chicles sin azúcar",porcion:"-"))
        alimentos.append(Alimento(tipo:"Libre",nombre:"Chile en polvo bajo en sodio",porcion:"-"))
        
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Alcachofas",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Alfalfa",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Apio",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Berenjena",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Brócoli",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Calabacita",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Calabaza naranja",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Cebolla blanca/morada",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Champiñon",porcion:"1pz"))
        alimentos.append(Alimento(tipo:"Verdura",nombre:"Chayotes",porcion:"1pz"))
        
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Aceitunas",porcion:"5pz"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Aguacate 25gr",porcion:"1/4pz"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Ajonjolí",porcion:"4C"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Almendra",porcion:"10pz"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Almendra fileteado",porcion:"2C"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Avellana",porcion:"10pz"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Cacahuate",porcion:"14pz"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Cacaonibs",porcion:"20gr"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Chía",porcion:"3C"))
        alimentos.append(Alimento(tipo:"Grasa",nombre:"Chocolate Turín sinazúcar",porcion:"18gr"))
        
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Alubia cocida",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Chícharo cocido",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Edamames",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Frijoles naturales aplastados",porcion:"1/4tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Frijol de la olla",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Garbanzococido",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Habacocida",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Hummus",porcion:"1/4tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Lenteja cocida",porcion:"1/2tz"))
        alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Proteína de soya",porcion:"20gr"))
        
        currentlyAlimentos = alimentos
    }
    
    func setUpSearchBar() {
        searchBar.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentlyAlimentos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? TableCell else{
            return UITableViewCell()
        }
        cell.food.text = currentlyAlimentos[indexPath.row].nombre
        cell.porcion.text = currentlyAlimentos[indexPath.row].porcion
        
        return cell
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentlyAlimentos = alimentos
            table.reloadData()
            return
        }
        currentlyAlimentos = alimentos.filter({ alimento -> Bool in
            alimento.nombre.lowercaseString.hasPrefix(searchText.lowercaseString)
        })
        table.reloadData()
    }
    
    
    
    
}


class Alimento{
    
    let tipo:String
    let nombre:String
    let porcion:String
    
    init(tipo:String,nombre:String, porcion:String) {
        self.tipo = tipo
        self.nombre = nombre
        self.porcion = porcion
    }
    
}
