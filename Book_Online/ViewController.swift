//
//  ViewController.swift
//  Book_Online
//
//  Created by VoYen on 2022-05-17.
//  Copyright © 2022 VoYen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell")as? CategoryTableViewCell)!
        cell.img.image = UIImage(named: "Image-\(indexPath.row+1)")
        cell.lblName.text = "Category\(indexPath.row+1)"
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryTableViewCell")
    }


}

