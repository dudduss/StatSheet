//
//  Player2View.swift
//  StatSheet
//
//  Created by Sampath Duddu on 1/2/15.
//  Copyright (c) 2015 NexGenTec. All rights reserved.
//

import UIKit

class Player2View: UIViewController {
    
    
    @IBOutlet weak var playerStats: UIWebView!
    var urlstring = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url2 = NSURL(string: urlstring)
        
        let request2 = NSURLRequest(URL: url2!)
        
        playerStats.loadRequest(request2)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
