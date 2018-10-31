//
//  GeneralViewController.swift
//  TareaKeyboards
//
//  Created by IGNACIO GALAN DE PINA on 17/10/18.
//  Copyright © 2018 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController {
    
    @IBOutlet weak var btnKeyboards: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func showKeyboardsVC() {
        let keyboardsVC = KeyboardsViewController()
        let navigationController = UINavigationController(rootViewController: keyboardsVC)
        navigationController.modalTransitionStyle = .flipHorizontal
        present(navigationController, animated: true, completion: nil)
        
    
    }
    
    @IBAction func btnGoKeyaboards(){
        
        showKeyboardsVC()
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
