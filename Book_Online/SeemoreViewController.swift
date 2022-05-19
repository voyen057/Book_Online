//
//  SeemoreViewController.swift
//  Book_Online
//
//  Created by VoYen on 2022-05-17.
//  Copyright © 2022 VoYen. All rights reserved.
//

import UIKit

class SeemoreViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: seemoreCollectionViewCell, for: indexPath) as! SeemoreCollectionViewCell
        let book = books[indexPath.row]
        cell.img.image = UIImage(named: "Image-\(indexPath.row+1)")
        cell.lblName.text = book.name!
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let book = books[indexPath.row]
        print("\(indexPath.row)-\(book.name!)")
    }

    @IBOutlet weak var collectionView: UICollectionView!
    let seemoreCollectionViewCell = "SeemoreCollectionViewCell"
    var books = [Book]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibCell = UINib(nibName: seemoreCollectionViewCell, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: seemoreCollectionViewCell)
        // Do any additional setup after loading the view.
        for _ in 1...8{
            let book = Book()
            book?.image = "Image"
            book?.name = "Xu xu"
            books.append(book!)
        }
        collectionView.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
