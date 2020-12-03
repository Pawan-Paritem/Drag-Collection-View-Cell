//
//  CollectionViewExtension.swift
//  Game
//
//  Created by Pawan  on 31/10/2020.
//

import Foundation
import UIKit


var color : [UIColor] = [.link, .systemRed, .systemTeal, .darkGray, .systemPink, .black, .systemGreen, .systemOrange, .systemYellow]

var intArray : [String] = ["15","9","14","5","11","1","8","6","10","3","12","7","2","4","13"]

var Arrayimg = [#imageLiteral(resourceName: "64788688_1149117278623905_1350807660299026432_n"),#imageLiteral(resourceName: "68656023_1185599294975703_2109013686059270144_n"),#imageLiteral(resourceName: "65924288_1156630274539272_5453350646092660736_o"),#imageLiteral(resourceName: "65880014_1156630464539253_6487156704533282816_o"),#imageLiteral(resourceName: "56894378_1097072983828335_3855690612334395392_o")]

extension GameViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GCell", for: indexPath) as! GameCollectionViewCell
        
       // cell.backgroundColor = color[indexPath.row]
      //  cell.img.image = Arrayimg[indexPath.row]
        cell.lblText.text = intArray[indexPath.row]
        
        if indexPath.row == 0 {
            cell.backgroundColor = .systemGreen
        }
        if indexPath.row == 1 {
            cell.backgroundColor = .systemGreen
        }
        if indexPath.row == 2 {
            cell.backgroundColor = .systemGreen
        }
        if indexPath.row == 3 {
            cell.backgroundColor = .systemRed
        }
        if indexPath.row == 4 {
            cell.backgroundColor = .systemRed
        }
        if indexPath.row == 5 {
            cell.backgroundColor = .systemRed
        }
        if indexPath.row == 6 {
            cell.backgroundColor = .systemPurple
        }
        if indexPath.row == 7 {
            cell.backgroundColor = .systemPurple
        }
        if indexPath.row == 8 {
            cell.backgroundColor = .systemPurple
        }
        if indexPath.row == 9 {
            cell.backgroundColor = .systemYellow
        }
        if indexPath.row == 10 {
            cell.backgroundColor = .systemYellow
        }
        if indexPath.row == 11 {
            cell.backgroundColor = .systemYellow
        }
        if indexPath.row == 12 {
            cell.backgroundColor = .systemOrange
        }
        if indexPath.row == 13 {
            cell.backgroundColor = .systemOrange
        }
        if indexPath.row == 14 {
            cell.backgroundColor = .systemOrange
        }
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
       
        let item = intArray.remove(at: sourceIndexPath.row)
        intArray.insert(item, at: destinationIndexPath.row)
    }
}
