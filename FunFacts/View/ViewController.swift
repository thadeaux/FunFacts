//
//  ViewController.swift
//  FunFacts
//
//  Created by Thad Aldridge on 2/25/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    var facts = [
        Trivia("Pac-Man", "Pac-Man is the highest grossing video game of all time, earning an estimated $2.5 billion."),
        Trivia("Donkey Kong", "The character known as Jumpman went on to become Mario in Super Mario Bros."),
        Trivia("ET: The Extra-Terrestrial", "This Atari video game undersold so badly that millions of cartridges were crushed and buried in New Mexico."),
        Trivia("Pole Position", "Pole Position was the first video game to use an actual race track."),
        Trivia("Centipede", "Dona Bailey, the only female employee at Atari's game department, helped create the original game."),
        Trivia("Missile Command", "When the Atari 2600 conversion of Missile Command released, the conversion's developer, Rob Fulop, was not paid in money by Atari, but rather a coupon for one free turkey at the American supermarket chain Safeway. Rob Fulop left to co-found Imagic as a result of this."),
        Trivia("Tetris","Was one of the first six video games to be inducted into the National Museum of Play's World Video Game Hall of Fame."),
        Trivia("The Legend of Zelda", "Link, the main protagonist of the Zelda series, was inspired by Peter Pan."),
        Trivia("Joust", "Joust was one of the first games to popularize the concept of two player action."),
        Trivia("Tempest", "Tempest was one of the first arcade games to feature 3D graphics.")
    ]
    
    var fact = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return facts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = facts[indexPath.row].game
        //fact = facts[indexPath.row].fact
        cell.contentConfiguration = content
        //print(fact)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fact = facts[indexPath.row].fact
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
            navigation.fact = fact
        }
        
    }
    


}

