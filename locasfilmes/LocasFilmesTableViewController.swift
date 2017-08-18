//
//  LocasFilmesTableViewController.swift
//  locasfilmes
//
//  Created by Usuário Convidado on 17/08/17.
//  Copyright © 2017 Gabriel. All rights reserved.
//

import UIKit

class LocasFilmesTableViewController: UITableViewController {
    
    var filme_nomes = ["E.T.", "Avatar", "Poderoso Chefão"]
    var filme_anos = [1983, 2009, 1972]
    var filme_imgs = [#imageLiteral(resourceName: "filmeet.jpg"), #imageLiteral(resourceName: "filmeavatar.jpg"), #imageLiteral(resourceName: "filmepoderosochefao.jpg")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return filme_nomes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = filme_nomes[indexPath.row]
        cell.detailTextLabel?.text = "\(filme_anos[indexPath.row])"
        cell.imageView?.image = filme_imgs[indexPath.row]
        
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segLoocasFilmesDetail", sender: nil)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "segLoocasFilmesDetail"){
            let vc = segue.destination as! ViewController
            let pos = tableView.indexPathForSelectedRow?.row
            vc.textoDoFilme = filme_nomes[pos!]
            vc.textoDoAno = "\(filme_anos[pos!])"
            vc.imagem = filme_imgs[pos!]
        }
        
    }
 

}
