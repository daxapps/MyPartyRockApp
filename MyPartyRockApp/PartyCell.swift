//
//  PartyCell.swift
//  MyPartyRockApp
//
//  Created by Jason Crawford on 8/8/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
    }

    

}
