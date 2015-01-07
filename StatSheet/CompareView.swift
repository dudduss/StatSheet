//
//  CompareView.swift
//  StatSheet
//
//  Created by Sampath Duddu on 12/31/14.
//  Copyright (c) 2014 NexGenTec. All rights reserved.
//

import UIKit

class CompareView: UIViewController {

    @IBOutlet weak var Player1WebView: UIWebView!
    @IBOutlet weak var Player2WebView: UIWebView!
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    
    var url1string = String()
    var url2string = String()
    var player1name = String()
    var player2name = String()

    
    @IBAction func back(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let url1 = NSURL(string: url1string)
        
        let url2 = NSURL(string: url2string)
        
        let request1 = NSURLRequest(URL: url1!)
        let request2 = NSURLRequest(URL: url2!)
        
        Player1WebView.loadRequest(request1)
        Player2WebView.loadRequest(request2)
        
        if player1name == ""
        {
            player1.text = "Please enter name"
        }
        
        if player2name == ""
        {
            player2.text = "Please enter name"
        }
        
        if (player1name != "") && (player2name != "")
        {
            player1.text = player1name + ":"
            player2.text = player2name + ":"
        }

        
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
