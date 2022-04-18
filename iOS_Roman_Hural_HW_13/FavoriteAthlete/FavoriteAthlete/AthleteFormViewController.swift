//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Roman Hural on 10.02.2022.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        guard let theAthlete = athlete else {return}
        nameTextField.text = theAthlete.name
        ageTextField.text = theAthlete.age
        leagueTextField.text = theAthlete.league
        teamTextField.text = theAthlete.team
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let age = ageTextField.text,
              let league = leagueTextField.text,
                let team = teamTextField.text else {return}
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "unwindToAthleteSegue", sender: self)
    }
}
