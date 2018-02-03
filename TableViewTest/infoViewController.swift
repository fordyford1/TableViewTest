//
//  infoViewController.swift
//  TableViewTest
//
//  Created by Anthony Ford on 03/02/2018.
//  Copyright © 2018 Anthony Ford. All rights reserved.
//

import UIKit

class infoViewController: UIViewController {
    var incomingIndex = -1
    
    @IBOutlet weak var SexLabel: UILabel!
    @IBOutlet weak var AgeLabel: UILabel!
    
    @IBAction func Delete(_ sender: Any) {
        flagArray.remove(at: incomingIndex)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AgeLabel.text = flagArray[incomingIndex][2]
        SexLabel.text = flagArray[incomingIndex][3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
