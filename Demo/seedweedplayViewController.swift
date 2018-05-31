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
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var loseLabel: UILabel!
    @IBOutlet weak var princessImageView: UIImageView!
    
    let princesses = ["cinderella", "ariel", "belle","elsa", "anna", "aurora"]
    var win: Int = 0
    var lose: Int = 0
    
    @IBOutlet weak var arielButton: UIButton!
    @IBOutlet weak var annaButton: UIButton!
    @IBOutlet weak var elsaButton: UIButton!
    @IBOutlet weak var cinderellaButton: UIButton!
    @IBOutlet weak var auroraButton: UIButton!
    @IBOutlet weak var belleButton: UIButton!
    @IBOutlet weak var gradeView: UIImageView!
    @IBOutlet weak var gradeLabel: UILabel!
   
    
    func transparentButtons() {
        cinderellaButton.alpha = 0.2
        arielButton.alpha = 0.2
        auroraButton.alpha = 0.2
        annaButton.alpha = 0.2
        belleButton.alpha = 0.2
        elsaButton.alpha = 0.2
        
    }
    
   
    @IBAction func play(_ sender: UIButton) {
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: princesses.count - 1)
        let number = randomDistribution.nextInt()
        let princess = princesses[number]
        princessImageView.image = UIImage(named: princess)
        
    transparentButtons()
        var isWin = false
        if sender ==  arielButton {
            arielButton.alpha = 1
            if princess == "ariel" {
                isWin = true
            }
        } else if sender == cinderellaButton {
            cinderellaButton.alpha = 1
            if princess == "cinderella" {
                isWin = true
            }
        } else if sender == belleButton {
            belleButton.alpha = 1
            if princess == "belle" {
                isWin = true
            }
        }   else if sender == elsaButton {
                    elsaButton.alpha = 1
                    if princess == "elsa" {
                        isWin = true
            }
            
        }   else if sender == auroraButton {
            auroraButton.alpha = 1
            if princess == "aurora" {
                isWin = true
            }
            
        }   else if sender == annaButton {
            annaButton.alpha = 1
            if princess == "anna" {
                isWin = true
            
            }
        
        }
      
        if isWin {
            resultLabel.text = "Win"
            win = win + 1
            winLabel.text = "勝：\(win)"
    
        } else {
            resultLabel.text = "Lose"
            lose = lose + 1
            loseLabel.text = "敗：\(lose)"
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

