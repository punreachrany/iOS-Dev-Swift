//
//  ViewController.swift
//  Contact TableView Custom Cell
//
//  Created by Punreach Rany on 2020/12/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let names = [
        "Punreach Rany",
        "Punrong Rany",
        "Rany Penn",
        "Punmonineath Rany"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
    }


}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me", indexPath.row)
    }
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = names[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.myLabel?.text = names[indexPath.row]
        cell.myImage.image = #imageLiteral(resourceName: "Punreach Rany")
//        cell.myImage.backgroundColor = .red
        return cell
    }
    
    
    
    
}



