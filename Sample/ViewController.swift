//
//  ViewController.swift
//  Sample
//
//  Created by Neil Sardesai on 10/17/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addAction(
            .init { [weak self] _ in
                guard let self else { return }
                let presentedVC = UIViewController()
                presentedVC.modalPresentationStyle = .popover
                presentedVC.view.backgroundColor = .clear
                let popover = presentedVC.popoverPresentationController
                popover?.sourceItem = button
                popover?.backgroundColor = .red
                present(presentedVC, animated: true)
            },
            for: .primaryActionTriggered
        )
    }

}

