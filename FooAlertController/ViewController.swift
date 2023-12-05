//
//  ViewController.swift
//  FooAlertController
//
//  Created by Duncan Champney on 12/4/23.
//

import UIKit

class FooController: UIAlertController {
}

class ViewController: UIViewController {
    
    let buttonLabels = [
    """
    Button1
    line2
    """,
    """
    Button2
    line2
    """,
    """
    Button3
    line2
    """
    ]

    @IBAction func handleAlertButton(_ sender: Any) {
        presentAlert(type: UIAlertController.self)
    }
    
    @IBAction func handleFooButton(_ sender: Any) {
        presentAlert(type: FooController.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UILabel.appearance(whenContainedInInstancesOf: [FooController.self]).numberOfLines = 2
    }
    
    func presentAlert(type: UIAlertController.Type) {
        let sheet = type.init(title: type.description(), message: nil, preferredStyle: .actionSheet)
            
        for buttonTitle in buttonLabels {
            
            let item = UIAlertAction(title: buttonTitle, style: .default) { (action) in
                print("Button \(buttonTitle) tapped")
            }
            sheet.addAction(item)
        }

        present(sheet, animated: true, completion: nil)
    }

    

}

