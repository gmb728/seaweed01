//
//  seedweedplayViewController.swift
//  Seedweedplay
//
//  Created by Chang Sophia on 2018/5/10.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit
class seedweedplayViewController: UIViewController {
    
   
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var arielImageVIew: UIImageView!
    let directions = ["up", "down", "foot"]
    @IBOutlet weak var upBotton: UIButton!
    @IBOutlet weak var downBotton: UIButton!
    @IBOutlet weak var footBotton: UIButton!
    
    
    
    
    func transparentButtons() {
        upBotton.alpha = 0.2
        downBotton.alpha = 0.2
        footBotton.alpha = 0.2
        
    }
    
   
    
    @IBAction func play(_ sender: UIButton) {
        
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: directions.count - 1)
        let number = randomDistribution.nextInt()
        let direction = directions[number]
        arielImageVIew.image = UIImage(named: direction)
        
    transparentButtons()
        var isWin = false
        if sender ==  upBotton {
            upBotton.alpha = 1
           
            if direction == "up" {
                isWin = true
            }
        } else if sender == downBotton {
            downBotton.alpha = 1
            
            if direction == "down" {
                isWin = true
            }
        } else if sender == footBotton {
            footBotton.alpha = 1
           
            if direction == "foot" {
                isWin = true
            }
        
        
        }
        
        if isWin {
            resultLabel.text = "Ariel lost her voice"
        } else {
            resultLabel.text = "Ariel won the legs"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
