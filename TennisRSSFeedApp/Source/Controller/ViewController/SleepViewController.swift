//
//  SleepViewController.swift
//  TennisRSSFeedApp
//
//  Created by Bath on 30/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class SleepViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    
    //MARK: Taking IBOutlets here
    
    @IBOutlet weak  var tableView = UITableView()
    
    var arrayTime = ["07:00","18:00","05:00"]
    var checkOnOff = Bool()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView?.tableFooterView = UIView.init()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//MARK: Table View data source and delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        
        let cell:SleepTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)  as! SleepTableViewCell
        
        cell.buttonOnOff?.addTarget(self, action: #selector(buttonOnOffTable), for: .touchUpInside)
        cell.buttonOnOff?.tag = 1000
        
        return cell
        
        
    }

    
//MARK: IBAction methods here
    
    @IBAction func onClickBackButton(_sender: AnyObject){
        _=self.navigationController?.popViewController(animated: true)
    }
    
    
    func buttonOnOffTable(_sender: UIButton){
        
        print("button tag\(_sender.tag)")
        if _sender.image(for: .normal) == #imageLiteral(resourceName: "onButton") {
            _sender.setImage(#imageLiteral(resourceName: "offButton"), for: .normal)
            
        }
        else{
            _sender.setImage(#imageLiteral(resourceName: "onButton"), for: .normal)
            
        }
        
    }
    
////MARK: Hide the status bar
//    override var prefersStatusBarHidden: Bool{
//        return true
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
