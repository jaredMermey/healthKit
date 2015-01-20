//
//  DetailViewController.swift
//  FoodTracker
//
//  Created by Jared Mermey on 12/22/14.
//  Copyright (c) 2014 Jared Mermey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var usdaItem: USDAItem?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "usdaItemDidComplete:", name: kUSDAItemCompleted, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func usdaItemDidComplete(notification: NSNotification){
        println("usdaItem did complete in DetailViewController")
        usdaItem = notification.object as? USDAItem
    }
    
    @IBAction func eatItBarButtonItemPressed(sender: UIBarButtonItem) {
    }

}
