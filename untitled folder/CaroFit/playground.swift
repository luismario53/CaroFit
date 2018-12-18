import Foundation
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

var alimentos = [Alimento]()
var currentlyAlimentos = [Alimento]()//Tabla actualizadades

func setUpFood() {
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

    alimentos.append(Alimento(tipo:"Proteina",nombre:"Abulónfresco",porcion:"50gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Almejafresca",porcion:"4pz"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Arrachera",porcion:"30gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Atúndelataofresco",porcion:"40gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Barbacoa",porcion:"40gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Bistecderes",porcion:"40gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Cabrito",porcion:"40gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Calamar",porcion:"50gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Camaróncocido",porcion:"40gr"))
    alimentos.append(Alimento(tipo:"Proteina",nombre:"Carnecuete",porcion:"40gr"))

    alimentos.append(Alimento(tipo:"Fruta",nombre:"Aguadecoco",porcion:"11/2tz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Arándanosdeshidratados",porcion:"1/5tz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Arándanosfrescos/blueberries",porcion:"1tz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Cereza/Cherry",porcion:"1tz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Chabacano",porcion:"4pz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Chirimoya",porcion:"1/3tz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruelamorada",porcion:"3pz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruelapasadeshuesada",porcion:"3pz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Ciruelasamarillas",porcion:"7pz"))
    alimentos.append(Alimento(tipo:"Fruta",nombre:"Duraznoamarillo",porcion:"2pz"))

    alimentos.append(Alimento(tipo:"Libre",nombre:"Aguamineral",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Arrozdecoliflor",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Caféamericano",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Caldonaturaldecamarón",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Caldonaturaldepollo",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Caldonaturalderes",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Caldonaturaldevegetales",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Canelaenpolvo",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Chiclessinazúcar",porcion:"-"))
    alimentos.append(Alimento(tipo:"Libre",nombre:"Chileenpolvobajoensodio",porcion:"-"))

    alimentos.append(Alimento(tipo:"Verdura",nombre:"Alcachofas",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Alfalfa",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Apio",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Berenjena",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Brócoli",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Calabacita",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Calabazanaranja",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Cebollablanca/morada",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Champiñon",porcion:"1pz"))
    alimentos.append(Alimento(tipo:"Verdura",nombre:"Chayotes",porcion:"1pz"))

    alimentos.append(Alimento(tipo:"Grasa",nombre:"Aceitunas",porcion:"5pz"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Aguacate25gr",porcion:"1/4pz"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Ajonjolí",porcion:"4C"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Almendra",porcion:"10pz"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Almendrafileteado",porcion:"2C"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Avellana",porcion:"10pz"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Cacahuate",porcion:"14pz"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Cacaonibs",porcion:"20gr"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"Chía",porcion:"3C"))
    alimentos.append(Alimento(tipo:"Grasa",nombre:"ChocolateTurínsinazúcar",porcion:"18gr"))

    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Alubiacocida",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Chícharococido",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Edamames",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Frijolesnaturalesaplastados",porcion:"1/4tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Frijoldelaolla",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Garbanzococido",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Habacocida",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Hummus",porcion:"1/4tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Lentejacocida",porcion:"1/2tz"))
    alimentos.append(Alimento(tipo:"Leguminosa",nombre:"Proteínadesoya",porcion:"20gr"))

    currentlyAlimentos = alimentos
    
}

for alimento in alimentos {
    if alimentos == nil {
        
    }else{
        if alimento.nombre.hasPrefix("Pl") {
        print("Tipo: "+alimento.tipo + ", Nombre: " + alimento.nombre + ", Porcion: " + alimento.porcion)
    }   else{
        print("Tipo: "+alimento.tipo + ", Nombre: " + alimento.nombre + ", Porcion: " + alimento.porcion)
        }
    }



}

func setUpSearchBar(parameters) -> T {
    
}

class ViewController: UIViewController, UITableViewDataSource , UISearchBarDelegate{
   
    //Declarar UISearchBar
    //Declarar UITableView
    //ViewController
    Override func viewDidLoad(){
        setUpFood()
        setUpSearchBar()
    }

    func table View(_tableView: UITableView, numerOfRowsInSection section: Int) -> Int {
        return currentlyAlimentos.count
    }

    func tableView(_tableView: IUTableView, cellForRowAtindexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else {
            return UITableViewCell()
        }

        cell.foodNameText = currentlyAlimentos[indexPath.row].nombre
        cell.foodPorcionText = currentlyAlimentos[indexPath.row].porcion

        return cell
    }

    func searchBar(_searchBar: UISearchBar. textDidChange searchText: String){
        guard !searchText.isEmpty else { 
            currentlyAlimentos = alimentos 
            table.reloadData()
            return 
        }
        currentlyAlimentos = alimentos.filter({ animal -> Bool in
            alimentos.nombre.lowercased().contains(searchText.lowercased())
        })
        table.reloadData()
    }

    func searchBar(_searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) -> Int {
        
    }



}




