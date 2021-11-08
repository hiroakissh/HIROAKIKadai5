//
//  ViewController.swift
//  HIROAKIKadai5
//
//  Created by HiroakiSaito on 2021/11/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var resultantLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calculationButton(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        let emptyAlert: UIAlertController = UIAlertController(title: "課題5", message: "割る数を入力してください", preferredStyle: .alert)

    }

}

