//
//  ViewController.swift
//  MyPartyRockApp
//
//  Created by Jason Crawford on 8/8/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [partyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = partyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: indexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell",  for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        
        } else {
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }

    


}

