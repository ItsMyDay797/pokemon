//
//  ResultViewController.swift
//  pokemon
//
//  Created by Марк Русаков on 19.08.22.
//

import UIKit

class ResultViewController: UIViewController {
    var name: UILabel!
    var weight: UILabel!
    var height: UILabel!
    var type: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = UILabel()
        name.text = "Name"
        
        view.addSubview(name)
    }
    

    
   
  

}
