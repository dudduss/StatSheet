//
//  NFLView.swift
//  StatSheet
//
//  Created by Sampath Duddu on 12/31/14.
//  Copyright (c) 2014 NexGenTec. All rights reserved.
//

import UIKit

class NFLView: UIViewController {

    @IBOutlet weak var player1Name: UITextField!
    @IBOutlet weak var player2Name: UITextField!

    @IBAction func back(sender: AnyObject) {
        
    dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "NFLsegue") {
            var compareView = segue.destinationViewController as CompareView;
            var new_player1name = player1Name.text.stringByReplacingOccurrencesOfString(" ", withString: "-", options: NSStringCompareOptions.LiteralSearch, range: nil)
            var new_player2name = player2Name.text.stringByReplacingOccurrencesOfString(" ", withString: "-", options: NSStringCompareOptions.LiteralSearch, range: nil)

            var url1 = "http://www.foxsports.com/nfl/" + new_player1name + "-player-stats"
            var url2 = "http://www.foxsports.com/nfl/" + new_player2name + "-player-stats"

            compareView.url1string = url1
            compareView.url2string = url2
            compareView.player1name = self.player1Name.text
            compareView.player2name = self.player2Name.text
        }
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        player1Name.resignFirstResponder()
        player2Name.resignFirstResponder()
        return true
    }

    

}
