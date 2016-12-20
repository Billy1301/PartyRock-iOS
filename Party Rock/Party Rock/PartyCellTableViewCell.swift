//
//  PartyCellTableViewCell.swift
//  Party Rock
//
//  Created by Billy on 12/20/16.
//  Copyright © 2016 Billy. All rights reserved.
//

import UIKit

class PartyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        //need to use async task for downloading image or links from internet
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle error
            }
        }
        
    }

}
