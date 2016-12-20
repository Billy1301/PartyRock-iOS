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
        
        let p1 = PartyRock(imageURL: "http://imgur.com/hHwdVhD", videoURL: urlTest, videoTitle: "Lights Out")
        
          let p2 = PartyRock(imageURL: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjevu6p0IPRAhUC2WMKHZrlDcgQjRwIBw&url=http%3A%2F%2Fwww.ign.com%2Farticles%2F2015%2F02%2F27%2F12-animal-species-identified-in-final-fantasy-15&psig=AFQjCNEcXyhoRsss7lKMFQu-ZjlLbDEv3Q&ust=1482352678607658", videoURL: urlTest, videoTitle: "Let's Get Ridiculous")
        
          let p3 = PartyRock(imageURL: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjjsZXa0IPRAhVV8mMKHeE8CtsQjRwIBw&url=http%3A%2F%2Fkawaii-stuffs-kawaii.tumblr.com%2F&bvm=bv.142059868,d.cGc&psig=AFQjCNFfkwMsjHKIiZlA0Xxxk3cqlui30w&ust=1482352798869977", videoURL: urlTest, videoTitle: "No Idea")
        
          let p4 = PartyRock(imageURL: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjOruvf1YPRAhVoi1QKHcAgBHMQjRwIBw&url=http%3A%2F%2Fen.rocketnews24.com%2F2015%2F04%2F03%2Ftoo-sexy-new-final-fantasys-hunky-male-lead-has-his-revealing-costume-toned-down%2F&bvm=bv.142059868,d.cGc&psig=AFQjCNFfkwMsjHKIiZlA0Xxxk3cqlui30w&ust=1482352798869977", videoURL: urlTest, videoTitle: "COLD!")
        
          let p5 = PartyRock(imageURL: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwif74CC3YPRAhUoilQKHdQlC1IQjRwIBw&url=http%3A%2F%2Fwww.gamespot.com%2Farticles%2F16-more-things-we-learned-about-final-fantasy-15%2F1100-6430160%2F&bvm=bv.142059868,d.cGc&psig=AFQjCNEcXyhoRsss7lKMFQu-ZjlLbDEv3Q&ust=1482352678607658", videoURL: urlTest, videoTitle: "Wiggle")
        
        
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

