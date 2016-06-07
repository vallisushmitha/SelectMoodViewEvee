//
//  ViewController.swift
//  SelectMoodView
//
//  Created by kvanaMini1 on 18/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
   
    @IBOutlet weak var clearbtn: UIButton!
 
    @IBOutlet weak var searchbtn: UIButton!
    
    func buttonElement(){
        clearbtn.layer.borderWidth=1
        clearbtn.layer.cornerRadius=5
        clearbtn.layer.borderColor = UIColor.orangeColor().CGColor
    }
    
    func button(){
        searchbtn.layer.borderWidth=1
        searchbtn.layer.cornerRadius=5
        searchbtn.layer.borderColor = UIColor.orangeColor().CGColor
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var LabelArray = [String]()
    var ImageArray = ["mood_social", "mood_active_sel", "mood_artistic", "mood_dancey", "mood_family_sel", "mood_foodie", "mood_intelligent", "mood_musical", "mood_spiritual_sel", "mood_sporty"]

    override func viewDidLoad() {
        super.viewDidLoad()
        LabelArray = ["Social", "Active", "Artistic", "Dancey", "Family", "Foodie", "Intelligent", "Musical", "Spiritual", "Sporty"]
        
        buttonElement()
        button()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: ImageArray[indexPath.row])
        
        cell.label.text = self.LabelArray[indexPath.row]
        
        return cell
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let numberOfColumns: CGFloat = 4
        
        let itemWidth = (CGRectGetWidth(self.collectionView!.frame) - (numberOfColumns - 1)) / numberOfColumns
        return CGSizeMake(itemWidth, itemWidth)
        
        
    }
   
    }

