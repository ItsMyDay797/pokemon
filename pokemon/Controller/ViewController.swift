//
//  ViewController.swift
//  pokemon
//
//  Created by Марк Русаков on 17.08.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
private let pokemonManager = PockemonManager()
    
    private let tableView: UITableView = {let tableView = UITableView(frame: .zero, style: .grouped); tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        pokemonManager.fetchData(pagination: false, completion: {[weak self]result in
            switch result {
            case .success(let data):
                self?.data.append(contentsOf: data)
                
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(_):
                break
            }
        })
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

