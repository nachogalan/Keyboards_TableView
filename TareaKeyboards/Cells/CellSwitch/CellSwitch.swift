//
//  CellSwitch.swift
//  TareaKeyboards
//
//  Created by IGNACIO GALAN DE PINA on 23/10/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class CellSwitch: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func saveSwitchState(_sender: Any ){
        if switch1.isOn{
            print(nameLabel.text! + " switch is ON")
        } else {
            print(nameLabel.text! + " switch is OFF")
        }
    }
    
}
