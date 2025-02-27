//
//  ViewController.swift
//  FunFacts
//
//  Created by Thad Aldridge on 2/25/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var factLogic = FactLogic()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factLogic.facts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = factLogic.facts[indexPath.row].game
        //fact = facts[indexPath.row].fact
        cell.contentConfiguration = content
        //print(fact)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        factLogic.fact = factLogic.facts[indexPath.row].fact
        self.performSegue(withIdentifier: "toFactView", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toFactView" {
            let navigation = segue.destination as! FactView
            navigation.fact = factLogic.fact
        }
        
    }
    


}

