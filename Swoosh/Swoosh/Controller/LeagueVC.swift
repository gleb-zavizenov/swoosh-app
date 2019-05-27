//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Gleb Zavizenov on 2019-05-27.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!

    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLevelVC", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: UIButton) {
        selectLeague(selectedLeague: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: UIButton) {
        selectLeague(selectedLeague: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: UIButton) {
        selectLeague(selectedLeague: "coed")
    }
    
    func selectLeague(selectedLeague : String) {
        player.desiredLeague = selectedLeague
        nextBtn.backgroundColor = UIColor(red: 85/255, green: 239/255, blue: 196/255, alpha: 1.0)
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
             skillVC.player = player
        }
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
