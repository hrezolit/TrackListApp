//
//  DescriptionViewController.swift
//  TrackListApp
//
//  Created by Nikita on 06.04.2021.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var trackNameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var trackName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: trackName)
        trackNameLabel.text = trackName
        trackNameLabel.numberOfLines = 0
        
    }
}
