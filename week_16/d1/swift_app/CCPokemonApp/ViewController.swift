import UIKit
import BrightFutures

class ViewController: UITableViewController {
    
    var pokemon: [PokemonSummary] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dataSource = PokemonDataSource()
        dataSource.getFirst150Pokemon()
            .onSuccess { pokemon in
                print("SUCCESS")
                self.pokemon = pokemon
                self.tableView.reloadData()
            }.onFailure { error in
                print("ERROR")
                print(error.domain)
                print(error.code)
                print(error.userInfo)
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = pokemon[indexPath.row].name
        
        let image = UIImage(named: "\(pokemon[indexPath.row].id)")
        cell.imageView?.image = image
        
        return cell
    }

}

