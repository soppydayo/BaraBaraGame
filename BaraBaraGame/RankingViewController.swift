//
//  RankingViewController.swift
//  BaraBaraGame
//
//  Created by 白川創大 on 2023/05/11.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankinglabel1: UILabel!
    @IBOutlet var rankinglabel2: UILabel!
    @IBOutlet var rankinglabel3: UILabel!
    
    let saveData: UserDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rankinglabel1.text = String(saveData.integer(forKey: "score1"))
        rankinglabel2.text = String(saveData.integer(forKey: "score2"))
        rankinglabel3.text = String(saveData.integer(forKey: "score3"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTop() {
        self.dismiss(animated: true, completion:  nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
