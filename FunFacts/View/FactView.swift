//
//  FactView.swift
//  FunFacts
//
//  Created by Thad Aldridge on 2/25/25.
//

import UIKit

class FactView: UIViewController {
    var fact = ""
    
    @IBOutlet weak var factLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        factLabel.text = fact
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    */

}
