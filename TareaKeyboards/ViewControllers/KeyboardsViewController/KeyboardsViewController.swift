//
//  KeyboardsViewController.swift
//  TareaKeyboards
//
//  Created by IGNACIO GALAN DE PINA on 17/10/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class KeyboardsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    internal var keyboards: [Keyboard] = []
    let section = ["1", "2", "3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Keyboards"
        setupButtonsItems()
        registerCells()


        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupButtonsItems() {
        let generalBarButton = UIBarButtonItem(title: "< General", style: .plain, target: self, action: #selector(cancelPressed))
        navigationItem.setLeftBarButton(generalBarButton, animated: false)
    }
    
    @objc private func cancelPressed() {
        dismiss(animated: true, completion: nil)
        
    }
    
    private func registerCells(){
        let identifier = "CellSwitch"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
        
        let identifier1 = "CellText"
        let cellNib1 = UINib(nibName: identifier1, bundle: nil)
        tableView.register(cellNib1, forCellReuseIdentifier: identifier1)
        
    }
    

}



extension KeyboardsViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String {
        switch(section) {
        case 2:
            return "ALL KEYBOARDS"
            
        default :
            return ""
            
        }
    }
    
    private func tableView (tableView:UITableView , heightForHeaderInSection section:Int)->Float
    {
        
        var title = self.tableView(tableView, titleForHeaderInSection: section)
        if (title == "") {
            return 0.0
        }
        return 20.0
    }
    
    // set view for footer
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int)->String? {
        switch(section) {
        case 2:
            return "Lorem Ipsum dolor aemet fofiaeru feawoiuf reaguiiuoew  fewafe wfer fsae fer egr g"
            
        default :
            return ""
            
        }
    }
    
    // set height for footer
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch(section) {
        case 2:
            return 40
            
        default :return 0
            
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        
        if section == 0 || section == 1
        {
            return 2
        }
        else if (section == 2)
        {
            return 8
        }
        else if (section == 3)
        {
            return 1
        }
        else
        {
        return 1
        }
    
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 55
    
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
            let cell: UITableViewCell = UITableViewCell()
        if indexPath.section == 0 {
            let cell: CellText = (tableView.dequeueReusableCell(withIdentifier: "CellText", for: indexPath) as? CellText)!
            cell.accessoryType = .disclosureIndicator
            
            switch (indexPath.row) {
            case 0:
                cell.nameLabel?.text = "Keyboards"
                cell.secondLabel?.text = "3"
            case 1:
                cell.nameLabel?.text = "Hardware Keyboard"
                cell.secondLabel?.text = ""
                
            default:
                cell.nameLabel?.text = ""
            }
            return cell
        }
        else if indexPath.section == 1 {
            let cell: CellText = (tableView.dequeueReusableCell(withIdentifier: "CellText", for: indexPath) as? CellText)!
            cell.accessoryType = .disclosureIndicator
            
            switch (indexPath.row) {
            case 0:
                cell.nameLabel?.text = "Text Replacement"
                cell.secondLabel?.text = ""
            case 1:
                cell.nameLabel?.text = "One Handed Keyboard"
                cell.secondLabel?.text = "Off"
                
            default:
                cell.nameLabel?.text = ""
            }
            return cell
        }
        else if indexPath.section == 2 {
            let cell: CellSwitch = (tableView.dequeueReusableCell(withIdentifier: "CellSwitch", for: indexPath) as? CellSwitch)!
            
            
            switch (indexPath.row) {
            case 0:
                cell.nameLabel?.text = "Auto-Capitalization"
                
                
            case 1:
                cell.nameLabel?.text = "Auto-Correction"
            case 2:
                cell.nameLabel?.text = "Check Spelling"
                
            case 3:
                cell.nameLabel?.text = "Enable Caps Lock"
            case 4:
                cell.nameLabel?.text = "Predictive"
                
            case 5:
                cell.nameLabel?.text = "Smart Punctuation"
            case 6:
                cell.nameLabel?.text = "Character Preview"
                
            case 7:
                cell.nameLabel?.text = "'.' Shortcut"
                
                
            default:
                cell.nameLabel?.text = ""
            }
            return cell
        }
        else if indexPath.section == 3  {
            let cell: CellSwitch = (tableView.dequeueReusableCell(withIdentifier: "CellSwitch", for: indexPath) as? CellSwitch)!
            
            switch (indexPath.row) {
            case 0:
                cell.nameLabel?.text = "Enable Dictation"
                cell.switch1.isOn = false
            default:
                cell.nameLabel?.text = ""
            }
            return cell
        }
            return cell
    }
}
