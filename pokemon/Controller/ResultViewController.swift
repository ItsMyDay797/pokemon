//
//  ResultViewController.swift
//  pokemon
//
//  Created by Марк Русаков on 19.08.22.
//

import SwiftUI

class ResultViewController: UIViewController {
    var name: UILabel!
    var weight: UILabel!
    var height: UILabel!
    var type: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = view.layoutMarginsGuide
        
        let textLabel = UILabel()
        textLabel.text = "Pokemon's name"
        textLabel.frame = CGRect(x: 10, y: 25, width: textLabel.frame.size.width, height: textLabel.frame.size.height)
        
        let textLabel1 = UILabel()
        textLabel1.text = "Pokemon's weight"
        
        view.addSubview(textLabel)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: layout.topAnchor).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: layout.leadingAnchor).isActive = true
        
//        textLabel1.translatesAutoresizingMaskIntoConstraints = false
//        textLabel1.topAnchor.constraint(equalTo: layout.topAnchor).isActive = true
//        textLabel1.leadingAnchor.constraint(equalTo: layout.leadingAnchor).isActive = true

    }
    

    

}



