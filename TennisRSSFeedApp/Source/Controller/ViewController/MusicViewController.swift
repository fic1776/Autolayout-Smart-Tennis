//
//  MusicViewController.swift
//  TennisRSSFeedApp
//
//  Created by RichMan on 11/16/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var musicItems:NSMutableArray!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        musicItems = [["category": "Rebelution1", "title":"De-Stress1 (Live At Red Rocks)", "fileName": "Be a Winner.mp3"],
                      ["category": "Rebelution2", "title":"De-Stress2 (Live At Red Rocks)", "fileName": "Believe in yourself.mp3"],
                      ["category": "Rebelution3", "title":"De-Stress3 (Live At Red Rocks)", "fileName": "BestTennis Player.mp3"],
                      ["category": "Rebelution4", "title":"De-Stress4 (Live At Red Rocks)", "fileName": "Excel in sport (1).mp3"],
                      ["category": "Rebelution5", "title":"De-Stress5 (Live At Red Rocks)", "fileName": "Exercise in your sleep.mp3"],
                      ["category": "Rebelution6", "title":"De-Stress6 (Live At Red Rocks)", "fileName": "Get in The zone.mp3"],
                      ["category": "Rebelution7", "title":"De-Stress7 (Live At Red Rocks)", "fileName": "Improving Lung Capacity.mp3"],
                      ["category": "Rebelution8", "title":"De-Stress8 (Live At Red Rocks)", "fileName": "Mental Imagery in Sport.mp3"],
                      ["category": "Rebelution9", "title":"De-Stress9 (Live At Red Rocks)", "fileName": "Mental Toughness.mp3"],
                      ["category": "Rebelution10", "title":"De-Stress10 (Live At Red Rocks)", "fileName": "Personal Development and motivation.mp3"]];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // TableViewDelegate Method;
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicItems.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell") as! MusicTableViewCell
        let item = musicItems.object(at: indexPath.row) as AnyObject

        cell.categoryLabel.text = item["category"] as? String
        cell.titleLabel.text = item["title"] as? String
        let filename = item["fileName"] as! String
        let path = Bundle.main.path(forResource: filename, ofType: nil)
        let url = URL(fileURLWithPath: path!)
        cell.setUrl(url: url)
        return cell
    }
    
    
    @IBAction func onClickBackButton(_ sender: AnyObject) {
        let _ = self.navigationController?.popViewController(animated: true)
    }

    @IBAction func onClickSearchButton(_ sender: AnyObject) {
    }
 
    
}
