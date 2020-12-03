//
//  GameViewController.swift
//  Game
//
//  Created by Pawan  on 31/10/2020.
//

import UIKit

class GameViewController: UIViewController {

    
    @IBOutlet weak var MainCollectionView: UICollectionView!
    @IBOutlet weak var profileImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MainCollectionView.delegate = self
        MainCollectionView.dataSource = self
    
        MainCollectionView.register(UINib(nibName: "GameCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GCell")
        
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture(_:)))
        MainCollectionView.addGestureRecognizer(gesture)
       
       
        profileImg.layer.borderWidth = 1
        profileImg.layer.masksToBounds = false
        profileImg.layer.borderColor = UIColor.black.cgColor
        profileImg.layer.cornerRadius = profileImg.frame.height/2
        profileImg.clipsToBounds = true
        
    }

   
    //Marks:- function
    @objc func handleLongPressGesture(_ gesture: UILongPressGestureRecognizer ) {
        
        guard let MainCollectionView = MainCollectionView else { return  }
        
        switch gesture.state {
        case .began:
            guard let targetindexpath = MainCollectionView.indexPathForItem(at: gesture.location(in: MainCollectionView)) else { return  }
            
            MainCollectionView.beginInteractiveMovementForItem(at: targetindexpath)
            
            break
        case .changed:
            MainCollectionView.updateInteractiveMovementTargetPosition(gesture.location(in: MainCollectionView))
            break
        case .ended:
            MainCollectionView.endInteractiveMovement()
            break
        default:
            MainCollectionView.cancelInteractiveMovement()
            break
        }
    }
}
