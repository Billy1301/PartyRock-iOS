//
//  MainVC.swift
//  Party Rock
//
//  Created by Billy on 12/20/16.
//  Copyright © 2016 Billy. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_eHZLoIeZ-k\" frameborder=\"0\" allowfullscreen></iframe>"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://imgur.com/hHwdVhD.png", videoURL: urlTest, videoTitle: "Lights Out")
        
          let p2 = PartyRock(imageURL: "http://i.imgur.com/q9hMDKp.png", videoURL: urlTest, videoTitle: "Let's Get Ridiculous")
        
          let p3 = PartyRock(imageURL: "http://static1.gamespot.com/uploads/original/1547/15470456/2929646-zkxwaba.jpg", videoURL: urlTest, videoTitle: "No Idea")
        
          let p4 = PartyRock(imageURL: "http://assets1.ignimgs.com/2014/09/18/finalfantasyxv0916131280jpg-b995a9_1280w.jpg", videoURL: urlTest, videoTitle: "COLD!")
        
          let p5 = PartyRock(imageURL: "http://static5.gamespot.com/uploads/original/1179/11799911/3158500-ff15.jpg", videoURL: urlTest, videoTitle: "Wiggle")
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCellTableViewCell", for: indexPath) as? PartyCellTableViewCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        }
        else {
            return UITableViewCell()
        }
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }


}

